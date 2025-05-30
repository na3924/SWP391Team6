package parentController;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import parentModel.UserDAO;
import parentModel.TutoringClassParentDAO;
import parentModel.TutoringRegistrationDAO;
import parentModel.PaymentDAO;
import parentEntity.User;
import parentEntity.TutoringClassParent;
import parentEntity.TutoringRegistration;
import parentEntity.Payment;

@WebServlet(name = "ParentDashboardController", urlPatterns = {"/dashboard"})
public class ParentDashboardController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        TutoringClassParentDAO classDAO = new TutoringClassParentDAO();
        TutoringRegistrationDAO registrationDAO = new TutoringRegistrationDAO();
        PaymentDAO paymentDAO = new PaymentDAO();

        try {
            // Get userId from session (set by login system)
            Integer userId = (Integer) request.getSession().getAttribute("userId");

            if (userId == null) {
                // Redirect to login page if no userId in session
                request.setAttribute("error", "Please log in to access the dashboard.");
                request.getRequestDispatcher("/login.jsp").forward(request, response); // Assume a login.jsp exists
                return;
            }

            // Fetch parent data using session userId
            User parent = userDAO.getParentById(userId);
            if (parent == null) {
                request.setAttribute("parentName", "Guest");
                request.setAttribute("error", "No parent data found for user ID " + userId + ".");
            } else {
                request.setAttribute("parentName", parent.getFullName());
            }

            // Fetch children (empty list if no data)
            List<User> children = userDAO.getChildrenByParentEmail(parent != null ? parent.getEmail() : "");
            request.setAttribute("children", children != null ? children : new ArrayList<>());

            // Fetch enrolled classes for all children
            List<TutoringClassParent> enrolledClasses = new ArrayList<>();
            for (User child : children) {
                List<TutoringClassParent> childClasses = classDAO.getEnrolledClassesByChildId(child.getUserId());
                for (TutoringClassParent cls : childClasses) {
                    cls.setChildId(child.getUserId());
                    cls.setChildName(child.getFullName());
                }
                enrolledClasses.addAll(childClasses);
            }
            request.setAttribute("enrolledClasses", enrolledClasses);

            // Fetch pending registrations
            List<TutoringRegistration> pendingRegistrations = registrationDAO.getPendingRegistrationsByParentEmail(parent != null ? parent.getEmail() : "");
            request.setAttribute("pendingRegistrations", pendingRegistrations != null ? pendingRegistrations : new ArrayList<>());

            // Fetch pending payments
            List<Payment> pendingPayments = paymentDAO.getPendingPaymentsByUserId(userId);
            request.setAttribute("pendingPayments", pendingPayments != null ? pendingPayments : new ArrayList<>());

            // Forward to JSP
            request.getRequestDispatcher("/parentDashboard.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            System.out.println("Error forwarding to: /error.jsp - " + e.getMessage());
            request.setAttribute("error", "Failed to load dashboard data: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        } finally {
            userDAO.closeConnection();
            classDAO.closeConnection();
            registrationDAO.closeConnection();
            paymentDAO.closeConnection();
        }
    }
}