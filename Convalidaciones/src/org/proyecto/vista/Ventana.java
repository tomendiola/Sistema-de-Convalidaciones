/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.proyecto.vista;

import com.itextpdf.text.Element;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableCellRenderer;
import javax.swing.text.Document;
import org.proyecto.controlador.ControladorMateria;
import org.proyecto.modelo.Materia;

import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;


/**
 *
 * @author tomen
 */
public class Ventana extends JFrame {
 Materia x=null,y=null;
    private JTable tableConva;
    private int registro = 0,a=1;
    private final JComboBox jComboBoxCursada;
    private final JComboBox jComboBoxACursar;
    private JTable tableCursada;
    private JTable tableACursadar;
    private final String[] carreras = {"Seleciona una carrera",
        "Desarrollo de Aplicaciones Empresariales",
        "Ingenieria en Gestion Empresarial",
        "Redes Convergentes de Alta Disponibilidad con Tecnologías Emergentes",
        "ingenieria en Electromecanimca",
        "ingenieria en Logistica",
        "Ingeniería en Tecnologías de la Información y Comunicaciones",
        "Ingeniería Mecatrónica"};
    String seleccion1 ="";
     String seleccion2="";
    
    
    DefaultTableModel modelCursada;
    JScrollPane scrollPaneCursada;
    String nameUsuario;

    DefaultTableModel modelACursada;
    JScrollPane scrollPaneACursada;
    //

    DefaultTableModel modelConva;
    JScrollPane scrollPaneConva;

    ArrayList<Materia> infoCursada = null;

    ArrayList<Materia> infoACursar = null;
        private JButton buttonImprimir ;
        
    public Ventana() {

        super("Prueba Actividad Convalecencias ");
        setLayout(new FlowLayout());
        jComboBoxCursada = new JComboBox<>(carreras);
        jComboBoxCursada.setBounds(10, 20, 30, 20);
buttonImprimir = new JButton("Imprimir en PDF");
     //   buttonImprimir.addActionListener(e -> guardarTablaEnPDF());

        jComboBoxACursar = new JComboBox<>(carreras);
        jComboBoxACursar.setBounds(10, 20, 30, 20);
        String[] columnNames = {"Clave", "Asignatura Cursada", "Selecionar"};
        String[] columnNames2 = {"Clave", "Asignatura A Cursar", "Selecionar"};
        String[] column = {"No.   ", "Asignatura Cursada", "Calificacion ", "Asignatura Convalidada", "Clave de la asignatura Conva"};

        add(jComboBoxCursada);
        add(jComboBoxACursar);
        Object[][] dataE = null;
        modelCursada = new DefaultTableModel(dataE, columnNames);
        modelACursada = new DefaultTableModel(dataE, columnNames2);
        modelConva = new DefaultTableModel(dataE, column);

        // Crear la tabla y agregarla a la ventana
        tableCursada = new JTable(modelCursada);
        scrollPaneCursada = new JScrollPane(tableCursada);
        add(scrollPaneCursada);

        tableACursadar = new JTable(modelACursada);
        scrollPaneACursada = new JScrollPane(tableACursadar);
        add(scrollPaneACursada);

        tableConva = new JTable(modelConva);
        scrollPaneConva = new JScrollPane(tableConva);
         add(scrollPaneConva);
          add(buttonImprimir);

        nameUsuario= JOptionPane.showInputDialog( "Ingrese el nombre del Alumno: ");
           buttonImprimir.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
 try {
   Paragraph  texto=null;
            // Crear un nuevo documento PDF
            com.itextpdf.text.Document document = new com.itextpdf.text.Document(com.itextpdf.text.PageSize.A4.rotate());
            // Establecer el destino de salida del archivo PDF
            PdfWriter.getInstance(document, new FileOutputStream(nameUsuario+".pdf"));
            document.open();
            Date fechaActual = new Date();
                    SimpleDateFormat formatoFecha = new SimpleDateFormat("dd/MM/yyyy");
        String fechaFormateada = formatoFecha.format(fechaActual);
        texto=new Paragraph("Dictamen de convalidacion de estudios" );
               texto.setAlignment(Element.ALIGN_CENTER); // Alinear el párrafo al centro

document.add(texto);
        texto=new Paragraph("Instituto Tecnológico de León" );
texto.setAlignment(Element.ALIGN_CENTER);
document.add(texto);

document.add(new Paragraph("Nombre del estudiante "+ nameUsuario+"            "
        + "              folio:xxxxxxx                Fecha:"+fechaFormateada ));
document.add(new Paragraph(" " ));
            PdfPTable pdfTable2 = new PdfPTable(2);
            
            
        pdfTable2.addCell(new PdfPCell(new Phrase("De: ")));
        pdfTable2.addCell(new PdfPCell(new Phrase("A: ")));
        pdfTable2.addCell(new PdfPCell(new Phrase(" Plan de estudios "+seleccion1)));
        pdfTable2.addCell(new PdfPCell(new Phrase(" Plan de estudios "+seleccion2)));

        document.add(pdfTable2);
document.add(new Paragraph(" " ));

            // Crear una tabla en el documento PDF
            PdfPTable pdfTable = new PdfPTable(tableConva.getColumnCount());

            // Agregar las cabeceras de las columnas a la tabla
            for (int column = 0; column < tableConva.getColumnCount(); column++) {
                pdfTable.addCell(new PdfPCell(new Phrase(tableConva.getColumnName(column))));
            }

            // Agregar las filas de datos a la tabla
            for (int row = 0; row < tableConva.getRowCount(); row++) {
                for (int column = 0; column < tableConva.getColumnCount(); column++) {
                    pdfTable.addCell(new PdfPCell(new Phrase(tableConva.getValueAt(row, column).toString())));
                }
            }

            // Agregar la tabla al documento
            document.add(pdfTable);

            // Cerrar el documento
            document.close();

            JOptionPane.showMessageDialog(null, "La informacion se ha guardado el archivo PDF correctamente.");
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Error al guardar la tabla en PDF: " + ex.getMessage());
        }            }
        });
        jComboBoxACursar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Obtener la selección actual del JComboBox
                 seleccion2 = jComboBoxACursar.getSelectedItem().toString();
                ControladorMateria objControladorMateria = new ControladorMateria();

                try {
                    infoACursar = objControladorMateria.muestraMateria(seleccion2);
                } catch (Exception ex) {
                    Logger.getLogger(Ventana.class.getName()).log(Level.SEVERE, null, ex);
                }

                // Crear el modelo de tabla
                // Crear un arreglo de objetos para los datos de la tabla
                Object[][] data = new Object[infoACursar.size()][3];
                for (int i = 0; i < infoACursar.size(); i++) {
                    data[i][0] = infoACursar.get(i).getClave();
                    data[i][1] = infoACursar.get(i).getNombre_Materia();
                    data[i][2] = infoACursar.get(i).getClave();
                    
//                     Object[] rowData = {
//                     infoACursar.get(i).getClave(),
//                     infoACursar.get(i).getNombre_Materia(),
//                     infoACursar.get(i).getClave()
//                             };
                     
        //                        a++;
//        modelConva.addRow(rowData);
                }
                
                remove(scrollPaneACursada);
                modelACursada = new DefaultTableModel(data, columnNames2) {
                    @Override
                    public Class<?> getColumnClass(int column) {
                        if (column == 3) {
                            return JButton.class;  // Las columnas "Acción" y "Acción 2" serán de tipo JButton
                        } else {
                            return Object.class;   // Las demás columnas serán de tipo Object
                        }
                    }
                };

                // Crear la tabla y agregarla a la ventana
                tableACursadar = new JTable(modelACursada);
                tableACursadar.getColumnModel().getColumn(2).setCellRenderer(new ButtonRenderer());

                // Agregar el editor de botones a las columnas "Acción" y "Acción 2"
                tableACursadar.getColumnModel().getColumn(2).setCellEditor(new ButtonEditor(new JCheckBox()));
                scrollPaneACursada = new JScrollPane(tableACursadar);
                
                 remove(scrollPaneCursada);
                add(scrollPaneCursada);  
                
                remove(scrollPaneACursada);
                add(scrollPaneACursada); 
                
               
                
                remove(scrollPaneACursada);
                add(scrollPaneACursada);
                 remove(scrollPaneConva);
                add(scrollPaneConva);
                                 remove(buttonImprimir);

                 add(buttonImprimir);

                repaint();
                revalidate();
              //  add(scrollPaneConva);
                // Mostrar un mensaje con la selección actual
            }
        });

        jComboBoxCursada.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Obtener la selección actual del JComboBox
                seleccion1 = jComboBoxCursada.getSelectedItem().toString();
                ControladorMateria objControladorMateria = new ControladorMateria();

                try {
                    infoCursada = objControladorMateria.muestraMateria(seleccion1);
                } catch (Exception ex) {
                    Logger.getLogger(Ventana.class.getName()).log(Level.SEVERE, null, ex);
                }

                // Crear el modelo de tabla
                // Crear un arreglo de objetos para los datos de la tabla
                Object[][] data = new Object[infoCursada.size()][3];
                for (int i = 0; i < infoCursada.size(); i++) {
                    data[i][0] = infoCursada.get(i).getClave();
                    data[i][1] = infoCursada.get(i).getNombre_Materia();
                    data[i][2] = infoCursada.get(i).getClave();
                }
                remove(scrollPaneCursada);
                modelCursada = new DefaultTableModel(data, columnNames) {
                    @Override
                    public Class<?> getColumnClass(int column) {
                        if (column == 3) {
                            return JButton.class;  // Las columnas "Acción" y "Acción 2" serán de tipo JButton
                        } else {
                            return Object.class;   // Las demás columnas serán de tipo Object
                        }
                    }
                };

                // Crear la tabla y agregarla a la ventana
                tableCursada = new JTable(modelCursada);
                tableCursada.getColumnModel().getColumn(2).setCellRenderer(new ButtonRenderer());

                // Agregar el editor de botones a las columnas "Acción" y "Acción 2"
                tableCursada.getColumnModel().getColumn(2).setCellEditor(new ButtonEditor(new JCheckBox()));

                scrollPaneCursada = new JScrollPane(tableCursada);
                  remove(scrollPaneCursada);
                add(scrollPaneCursada);  
                
                remove(scrollPaneACursada);
                add(scrollPaneACursada); 
                
                remove(scrollPaneConva);
                add(scrollPaneConva);
                
                                 remove(buttonImprimir);

                 add(buttonImprimir);

                repaint();
                revalidate();
                // Mostrar un mensaje con la selección actual
            }
        });

        // Crear el modelo de datos de la tabla
        DefaultTableModel model = new DefaultTableModel() {
            @Override
            public Class<?> getColumnClass(int column) {
                if (column == 1 || column == 2) {
                    return JButton.class;  // Las columnas "Acción" y "Acción 2" serán de tipo JButton
                } else {
                    return Object.class;   // Las demás columnas serán de tipo Object
                }
            }
        };
        model.addColumn("Nombre");
        model.addColumn("Acción");
        model.addColumn("Acción 2");

        // Agregar datos de ejemplo
        model.addRow(new Object[]{"Objeto 1", "Botón 1", "Botón 2"});
        model.addRow(new Object[]{"Objeto 2", "Botón 3", "Botón 4"});
        model.addRow(new Object[]{"Objeto 3", "Botón 5", "Botón 6"});

        // Crear la tabla con el modelo de datos
        //       table = new JTable(model);
        // Establecer el renderizador de botones para las columnas "Acción" y "Acción 2"
        //       table.getColumnModel().getColumn(1).setCellRenderer(new ButtonRenderer());
        //     table.getColumnModel().getColumn(2).setCellRenderer(new ButtonRenderer());
        // Agregar el editor de botones a las columnas "Acción" y "Acción 2"
        //       table.getColumnModel().getColumn(1).setCellEditor(new ButtonEditor(new JCheckBox()));
        //     table.getColumnModel().getColumn(2).setCellEditor(new ButtonEditor(new JCheckBox()));
        // Agregar la tabla al JFrame
        //    add(new JScrollPane(table));
        // Configuraciones de la ventana
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        pack();
        setLocationRelativeTo(null);
        setVisible(true);
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    public static void main(String[] args) {
        Ventana ObjAct1 = new Ventana();
        ObjAct1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        ObjAct1.setSize(1000, 4000);
        ObjAct1.setVisible(true);
//        SwingUtilities.invokeLater(JTableConBotones::new);
    }

    // Clase para renderizar los botones en la tabla
    private class ButtonRenderer extends JButton implements TableCellRenderer {

        public ButtonRenderer() {
            setOpaque(true);
        }

        @Override
        public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
            setText((value == null) ? "" : value.toString());
            return this;
        }
    }

    // Clase para editar los botones en la tabla
    private class ButtonEditor extends DefaultCellEditor {

        private JButton button;
        private String label;
        private boolean clicked;

        public ButtonEditor(JCheckBox checkBox) {
            super(checkBox);
            button = new JButton();
            button.setOpaque(true);
            button.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                         
                    String dato,dato2;
                   
                    
                       if(registro==1){
                        for (int i = 0; i < infoACursar.size(); i++) {
                            dato2 = infoACursar.get(i).getClave();
                            if (dato2 == button.getText()) {
                                y = infoACursar.get(i);
                                registro=0;
                                
                                Object[] rowData = {a, x.getNombre_Materia(),
                                    JOptionPane.showInputDialog( "Ingrese el valor de la calificacion:"), 
                                    y.getNombre_Materia(),y.getClave()};
                                a++;
        modelConva.addRow(rowData);

        // Notificar al JTable que los datos han cambiado
        modelConva.fireTableDataChanged();
              repaint();
                revalidate();
                                break;
                            }
                        }
                    }
                       
                    if (registro == 0) {
                        for (int i = 0; i < infoCursada.size(); i++) {
                         //   System.out.println(registro);
                            dato = infoCursada.get(i).getClave();
                            if (dato == button.getText()) {
                                x = infoCursada.get(i);
                         //       System.out.println(dato+" ****** "+ registro);
                                registro++;
                                break;
                            }
                        }

                    } 
                    fireEditingStopped();
                }
            });
        }

        @Override
        public Component getTableCellEditorComponent(JTable table, Object value, boolean isSelected, int row, int column) {
            label = (value == null) ? "" : value.toString();
            button.setText(label);
            clicked = true;
            return button;
        }

        @Override
        public Object getCellEditorValue() {
            if (clicked) {

                int selectedColumnCur = tableCursada.getSelectedColumn();
                int selectedRowCur = tableCursada.getSelectedRow();
                //       System.out.println(selectedColumnCur + " " + selectedColumnCur);
                if (selectedColumnCur == 2) {
                    // Mostrar un JOptionPane.showMessageDialog
                    //         JOptionPane.showMessageDialog(null, "Acabas de selecionar " + tableCursada.getValueAt(selectedRowCur, 0));
                }

                // Acción a realizar cuando se hace clic en el botón
//    //            int selectedColumn = table.getSelectedColumn();
//     //           int selectedRow = table.getSelectedRow();
//                if (selectedColumn == 1) {
//                    // Mostrar un JOptionPane.showMessageDialog
//                    JOptionPane.showMessageDialog(table, "Mensaje de ejemplo");
//                } else if (selectedColumn == 2) {
//                    // Mostrar un JOptionPane.showInputDialog
//                    String input = JOptionPane.showInputDialog(table, "Ingrese un valor:");
//                    System.out.println("Valor ingresado: " + input);
//                }
            }
            clicked = false;
            return label;
        }

        @Override
        public boolean stopCellEditing() {
            clicked = false;
            return super.stopCellEditing();
        }

        @Override
        protected void fireEditingStopped() {
            super.fireEditingStopped();
        }
    }
}
