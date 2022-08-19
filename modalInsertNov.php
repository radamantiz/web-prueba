<!-- Modal -->
<div class="modal fade" id="novedadModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Registrar novedad</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div style="font-size: 1.05em;" class="modal-body font-weight-bold">
          <form id="frminsertnov" onsubmit="return registrarNovedad()" method="post">
            <input type="text" id="idEquipou" name="idEquipou" hidden>
            <input type="datetime" id="fechan" name="fechan" hidden="" value="<?= date('Y-m-d H:i:s'); ?>">
            <input type="text" id="FK_usuarion" name="FK_usuarion" hidden="" value="<?= $usuario?>">
              <label>Tipo</label>
              <select id="tipon" name="tipon" class="form-control form-control-sm" required>
                <option value="" disabled selected hidden>Tipo de novedad</option>
                <option value="Daño">Daño</option>
                <option value="Perdida">Perdida</option>
                <option value="Reparación">Reparación</option>
              </select>
              <label>Descripción</label>
              <textarea name="descripcionn" id="descripcionn" cols="30" rows="10" class="form-control form-control-sm"></textarea>
              <br>
               <input type="submit" value="Registrar" class="btn btn-primary">
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        
      </div>
    </div>
  </div>
</div>