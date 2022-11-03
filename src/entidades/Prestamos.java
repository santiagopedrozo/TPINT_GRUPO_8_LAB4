package entidades;

import java.time.LocalDateTime;

import com.sun.jmx.snmp.Timestamp;

public class Prestamos {
	private int Id_Pr;
	private Usuarios Usuario_Pr;
	private Cuentas CuentaDestino_Pr;
	private Timestamp FechaSolicitado_Pr;
	private float ImpSolicitado_Pr;
	private float ImpResultante_Pr;
	private int PlazoMeses_Pr;
	private float ImpPagoAlMes_Pr;
	private int CantCuotas_Pr;
	private boolean Autorizado_Pr;
	private boolean Estado_Pr;
	
	//Constructores
	public Prestamos() {
		Usuario_Pr = new Usuarios();
		CuentaDestino_Pr = new Cuentas();
	}
	
	public Prestamos(int id_Pr, Usuarios usuario_Pr, Cuentas cuentaDestino_Pr, Timestamp fechaSolicitado_Pr,
	float impSolicitado_Pr, float impResultante_Pr, int plazoMeses_Pr, float impPagoAlMes_Pr, int cantCuotas_Pr,
	boolean autorizado_Pr, boolean estado_Pr) {
		Id_Pr = id_Pr;
		Usuario_Pr = usuario_Pr;
		CuentaDestino_Pr = cuentaDestino_Pr;
		FechaSolicitado_Pr = fechaSolicitado_Pr;
		ImpSolicitado_Pr = impSolicitado_Pr;
		ImpResultante_Pr = impResultante_Pr;
		PlazoMeses_Pr = plazoMeses_Pr;
		ImpPagoAlMes_Pr = impPagoAlMes_Pr;
		CantCuotas_Pr = cantCuotas_Pr;
		Autorizado_Pr = autorizado_Pr;
		Estado_Pr = estado_Pr;
	}

	//Gets y Sets
	public int getId_Pr() {
		return Id_Pr;
	}


	public void setId_Pr(int id_Pr) {
		Id_Pr = id_Pr;
	}


	public Usuarios getUsuario_Pr() {
		return Usuario_Pr;
	}


	public void setUsuario_Pr(Usuarios usuario_Pr) {
		Usuario_Pr = usuario_Pr;
	}


	public Cuentas getCuentaDestino_Pr() {
		return CuentaDestino_Pr;
	}


	public void setCuentaDestino_Pr(Cuentas cuentaDestino_Pr) {
		CuentaDestino_Pr = cuentaDestino_Pr;
	}

	public Timestamp getFechaSolicitado_Pr() {
		return FechaSolicitado_Pr;
	}

	public void setFechaSolicitado_Pr(Timestamp fechaSolicitado_Pr) {
		FechaSolicitado_Pr = fechaSolicitado_Pr;
	}

	public float getImpSolicitado_Pr() {
		return ImpSolicitado_Pr;
	}


	public void setImpSolicitado_Pr(float impSolicitado_Pr) {
		ImpSolicitado_Pr = impSolicitado_Pr;
	}


	public float getImpResultante_Pr() {
		return ImpResultante_Pr;
	}


	public void setImpResultante_Pr(float impResultante_Pr) {
		ImpResultante_Pr = impResultante_Pr;
	}


	public int getPlazoMeses_Pr() {
		return PlazoMeses_Pr;
	}


	public void setPlazoMeses_Pr(int plazoMeses_Pr) {
		PlazoMeses_Pr = plazoMeses_Pr;
	}


	public float getImpPagoAlMes_Pr() {
		return ImpPagoAlMes_Pr;
	}


	public void setImpPagoAlMes_Pr(float impPagoAlMes_Pr) {
		ImpPagoAlMes_Pr = impPagoAlMes_Pr;
	}


	public int getCantCuotas_Pr() {
		return CantCuotas_Pr;
	}


	public void setCantCuotas_Pr(int cantCuotas_Pr) {
		CantCuotas_Pr = cantCuotas_Pr;
	}


	public boolean isAutorizado_Pr() {
		return Autorizado_Pr;
	}


	public void setAutorizado_Pr(boolean autorizado_Pr) {
		Autorizado_Pr = autorizado_Pr;
	}


	public boolean isEstado_Pr() {
		return Estado_Pr;
	}


	public void setEstado_Pr(boolean estado_Pr) {
		Estado_Pr = estado_Pr;
	}

	
	//toString
	@Override
	public String toString() {
		return "Prestamos [Id_Pr=" + Id_Pr + ", Usuario_Pr=" + Usuario_Pr + ", CuentaDestino_Pr=" + CuentaDestino_Pr
				+ ", FechaSolicitado_Pr=" + FechaSolicitado_Pr + ", ImpSolicitado_Pr=" + ImpSolicitado_Pr
				+ ", ImpResultante_Pr=" + ImpResultante_Pr + ", PlazoMeses_Pr=" + PlazoMeses_Pr + ", ImpPagoAlMes_Pr="
				+ ImpPagoAlMes_Pr + ", CantCuotas_Pr=" + CantCuotas_Pr + ", Autorizado_Pr=" + Autorizado_Pr
				+ ", Estado_Pr=" + Estado_Pr + "]";
	}
	
	
	
	
}
