/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package view;

import model.Producto;
import java.util.ArrayList;
import com.formdev.flatlaf.FlatLightLaf;
import javax.swing.UIManager;
import javax.swing.*;
import java.awt.*;
/**
 *
 * @author mm206
 */
public class MenuPrincipal extends javax.swing.JFrame {

public static ArrayList<Producto> productos = new ArrayList<>();

RegistroVenta registroVenta = new RegistroVenta(); // <-- UNA SOLA INSTANCIA
RegistroProducto registroProducto = new RegistroProducto();

    /**
     * Creates new form MenuPrincipal
     */
    public MenuPrincipal() {
        setTitle("Diseño Café ☕");
        setSize(400, 250);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLayout(new BorderLayout());

        // Fondo de la ventana
        getContentPane().setBackground(Color.decode("#D7CCC8")); // Café claro

        // Título con color café oscuro
        JLabel titulo = new JLabel("Bienvenido a la Interfaz Café");
        titulo.setFont(new Font("Serif", Font.BOLD, 20));
        titulo.setForeground(Color.decode("#3E2723")); // Café muy oscuro
        titulo.setHorizontalAlignment(SwingConstants.CENTER);
        titulo.setBorder(BorderFactory.createEmptyBorder(20, 0, 10, 0));

        // Botón con colores café
        JButton boton = new JButton("Sírvele clic");
        boton.setBackground(Color.decode("#5D4037"));   // Café oscuro
        boton.setForeground(Color.decode("#FBE9E7"));   // Crema claro
        boton.setFocusPainted(false);
        boton.setBorder(BorderFactory.createEmptyBorder(10, 25, 10, 25));
        boton.setFont(new Font("SansSerif", Font.BOLD, 14));
        boton.addActionListener(e -> JOptionPane.showMessageDialog(this, "¿Otro cafecito? ☕"));

        JPanel panelCentro = new JPanel();
        panelCentro.setBackground(Color.decode("#D7CCC8"));
        panelCentro.add(boton);

        add(titulo, BorderLayout.NORTH);
        add(panelCentro, BorderLayout.CENTER);
        initComponents();
    }

    public class Main {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(new FlatLightLaf());
        } catch (Exception e) {
            System.err.println("Error al aplicar FlatLaf");
        }

        new MenuPrincipal().setVisible(true);
    }
}

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btnProducto = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        btnVenta = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Sistema de Panadería");

        btnProducto.setBackground(new java.awt.Color(176, 160, 100));
        btnProducto.setText("Producto");
        btnProducto.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnProductoActionPerformed(evt);
            }
        });

        jLabel1.setBackground(new java.awt.Color(115, 102, 25));
        jLabel1.setFont(new java.awt.Font("Algerian", 3, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(115, 102, 25));
        jLabel1.setText("BIENVENIDOS A NUESTRA PANADERIA");

        btnVenta.setBackground(new java.awt.Color(176, 160, 100));
        btnVenta.setText("Venta");
        btnVenta.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnVentaActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(19, Short.MAX_VALUE)
                .addComponent(jLabel1)
                .addGap(15, 15, 15))
            .addGroup(layout.createSequentialGroup()
                .addGap(117, 117, 117)
                .addComponent(btnProducto)
                .addGap(96, 96, 96)
                .addComponent(btnVenta)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(58, 58, 58)
                .addComponent(jLabel1)
                .addGap(95, 95, 95)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnProducto)
                    .addComponent(btnVenta))
                .addContainerGap(107, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnProductoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnProductoActionPerformed
registroProducto.setVisible(true);
this.setVisible(false);
        // TODO add your handling code here:
    }//GEN-LAST:event_btnProductoActionPerformed

    private void btnVentaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnVentaActionPerformed
registroVenta.setVisible(true);
this.setVisible(false); // oculta MenuPrincipal

       // TODO add your handling code here:
    }//GEN-LAST:event_btnVentaActionPerformed

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
            java.util.logging.Logger.getLogger(MenuPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MenuPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MenuPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MenuPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new MenuPrincipal().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnProducto;
    private javax.swing.JButton btnVenta;
    private javax.swing.JLabel jLabel1;
    // End of variables declaration//GEN-END:variables

}