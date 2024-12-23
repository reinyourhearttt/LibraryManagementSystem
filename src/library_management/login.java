/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package library_management;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

/**
 *
 * @author Jerkeen
 */
public class login extends javax.swing.JFrame {

    /**
     * Creates new form login
     */
    public login() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel5 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        tfusername = new javax.swing.JTextField();
        tfpassword = new javax.swing.JPasswordField();
        alogin = new javax.swing.JButton();
        cbtn = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel5.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(255, 204, 102));
        jLabel5.setText("USERNAME:");
        getContentPane().add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 110, -1, -1));

        jLabel4.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(255, 204, 102));
        jLabel4.setText("PASSWORD:");
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 200, -1, -1));

        tfusername.setBackground(new java.awt.Color(255, 204, 102));
        tfusername.setFont(new java.awt.Font("Times New Roman", 0, 12)); // NOI18N
        getContentPane().add(tfusername, new org.netbeans.lib.awtextra.AbsoluteConstraints(139, 98, 255, 42));

        tfpassword.setBackground(new java.awt.Color(255, 204, 102));
        tfpassword.setFont(new java.awt.Font("Times New Roman", 0, 12)); // NOI18N
        tfpassword.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tfpasswordActionPerformed(evt);
            }
        });
        getContentPane().add(tfpassword, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 190, 257, 42));

        alogin.setBackground(new java.awt.Color(255, 204, 102));
        alogin.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        alogin.setText("LOGIN");
        alogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                aloginActionPerformed(evt);
            }
        });
        getContentPane().add(alogin, new org.netbeans.lib.awtextra.AbsoluteConstraints(368, 279, -1, 40));

        cbtn.setBackground(new java.awt.Color(255, 204, 102));
        cbtn.setFont(new java.awt.Font("Times New Roman", 1, 12)); // NOI18N
        cbtn.setText("CLEAR");
        cbtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbtnActionPerformed(evt);
            }
        });
        getContentPane().add(cbtn, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 280, 80, 40));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/library_management/36a085785eabcc6add04d35e8c97be37.jpg"))); // NOI18N
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 470, 330));

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void tfpasswordActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tfpasswordActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_tfpasswordActionPerformed

    private void aloginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_aloginActionPerformed
        // TODO add your handling code here:
        if(evt.getSource()==alogin)
        {
            String username = tfusername.getText();
            String password = tfpassword.getText();

            if (username.isEmpty() && password.isEmpty()) {
                JOptionPane.showMessageDialog(null, "Please Enter username and password.");
            } else if (username.isEmpty()) {
                JOptionPane.showMessageDialog(null, "Please enter your username.");
            } else if (password.isEmpty()) {
                JOptionPane.showMessageDialog(null, "Please enter your password.");
            } else {

                String query="Select * from admin_tbl where username=? And password=?";
                try{
                    Conn c=new Conn();
                    PreparedStatement pst=c.conn.prepareStatement(query);
                    pst.setString(1, username);
                    pst.setString(2, password);
                    ResultSet rs=pst.executeQuery();

                    if(rs.next())
                    {

                        Books book = new Books();
                        this.setVisible(false);
                        book.setVisible(true);
                    }
                    else
                    {

                        String queryCheckUser = "Select * from admin_tbl where username=?";
                        PreparedStatement pstCheckUser = c.conn.prepareStatement(queryCheckUser);
                        pstCheckUser.setString(1, username);
                        ResultSet rsCheckUser = pstCheckUser.executeQuery();

                        if (rsCheckUser.next()) {
                            JOptionPane.showMessageDialog(null, "Incorrect Username.");
                        } else {
                            JOptionPane.showMessageDialog(null, "Incorrect Password");
                        }

                        rsCheckUser.close();
                    }

                    rs.close();

                } catch(Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }//GEN-LAST:event_aloginActionPerformed

    private void cbtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbtnActionPerformed
        // TODO add your handling code here:
        tfusername.setText(""); 
        tfpassword.setText(""); 
    }//GEN-LAST:event_cbtnActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new login().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton alogin;
    private javax.swing.JButton cbtn;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPasswordField tfpassword;
    private javax.swing.JTextField tfusername;
    // End of variables declaration//GEN-END:variables
}
