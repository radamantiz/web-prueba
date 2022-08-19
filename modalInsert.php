
<!-- Modal -->
<div class="modal fade" id="insertarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Agregar nuevo registro</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div style="font-size: 1.05em;" class="modal-body">
          <form id="frminsert" onsubmit="return insertarDatos()" method="post">
              <label>Codigo</label>
              <input type="text" id="codigo" name="codigo" class="form-control form-control-sm" required="">
              <label>Nombres</label>
              <input type="text" id="nombre" name="nombre" class="form-control form-control-sm" required="">
              <label>Estado</label>
              <select id="estado" name="estado" class="form-control form-control-sm">
                <option value="" disabled selected hidden>Estado</option>
                <option value="EN USO">En uso</option>
                <option value="DAÑADO">Con daños</option>
                <option value="MANTENIMIENTO">En mantenimiento</option>
              </select>
              <label>Ambiente</label>
              <input type="number" id="FK_ambiente" name="FK_ambiente" class="form-control form-control-sm" required="">
              <br>
               <input type="submit" value="Guardar" class="btn btn-primary">
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        
      </div>
    </div>
  </div>
</div>


