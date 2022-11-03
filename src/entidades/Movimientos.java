package entidades;

import java.time.LocalDateTime;

public class Movimientos {
	private int Id_Mov;
	private Cuentas Cuenta_Mov;
	private TipoMovimientos TiposMov_Mov;
	private LocalDateTime Fecha_Mov;
	private String Detalle_Mov;
	private float Importe_Mov;
	private boolean Estado_Mov;
	
	//Constructores
	public Movimientos() {
		Cuenta_Mov = new Cuentas();
		TiposMov_Mov = new TipoMovimientos();
	}
	
	public Movimientos(int id_Mov, Cuentas cuenta_Mov, TipoMovimientos tiposMov_Mov, LocalDateTime fecha_Mov,
	String detalle_Mov, float importe_Mov, boolean estado_Mov) {

		Id_Mov = id_Mov;
		Cuenta_Mov = cuenta_Mov;
		TiposMov_Mov = tiposMov_Mov;
		Fecha_Mov = fecha_Mov;
		Detalle_Mov = detalle_Mov;
		Importe_Mov = importe_Mov;
		Estado_Mov = estado_Mov;
	}

	//Gets y Sets
	public int getId_Mov() {
		return Id_Mov;
	}

	public void setId_Mov(int id_Mov) {
		Id_Mov = id_Mov;
	}

	public Cuentas getCuenta_Mov() {
		return Cuenta_Mov;
	}

	public void setCuenta_Mov(Cuentas cuenta_Mov) {
		Cuenta_Mov = cuenta_Mov;
	}

	public TipoMovimientos getTiposMov_Mov() {
		return TiposMov_Mov;
	}

	public void setTiposMov_Mov(TipoMovimientos tiposMov_Mov) {
		TiposMov_Mov = tiposMov_Mov;
	}

	public LocalDateTime getFecha_Mov() {
		return Fecha_Mov;
	}

	public void setFecha_Mov(LocalDateTime fecha_Mov) {
		Fecha_Mov = fecha_Mov;
	}

	public String getDetalle_Mov() {
		return Detalle_Mov;
	}

	public void setDetalle_Mov(String detalle_Mov) {
		Detalle_Mov = detalle_Mov;
	}

	public float getImporte_Mov() {
		return Importe_Mov;
	}

	public void setImporte_Mov(float importe_Mov) {
		Importe_Mov = importe_Mov;
	}

	public boolean isEstado_Mov() {
		return Estado_Mov;
	}

	public void setEstado_Mov(boolean estado_Mov) {
		Estado_Mov = estado_Mov;
	}
	
	//toString
	@Override
	public String toString() {
		return "Movimientos [Id_Mov=" + Id_Mov + ", Cuenta_Mov=" + Cuenta_Mov + ", TiposMov_Mov=" + TiposMov_Mov
				+ ", Fecha_Mov=" + Fecha_Mov + ", Detalle_Mov=" + Detalle_Mov + ", Importe_Mov=" + Importe_Mov
				+ ", Estado_Mov=" + Estado_Mov + "]";
	}
	
	
	
	
}
