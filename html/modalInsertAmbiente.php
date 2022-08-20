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
          <form id="frminsertAmbiente" onsubmit="return insertarDatos()" method="post">
              <label>Nombre</label>
              <input type="text" id="nombre" name="nombre" class="form-control form-control-sm" required="">
              <label>Piso</label>
              <select id="ubicacionA" name="ubicacionA" class="form-control form-control-sm">
                <option value="" disabled selected hidden>Seleccione piso</option>
                <option value="Piso 1">Piso 1</option>
                <option value="Piso 2">Piso 2</option>
                <option value="Piso 3">Piso 3</option>
                <option value="Piso 4">Piso 4</option>
                <option value="Piso 5">Piso 5</option>
                <option value="Piso 6">Piso 6</option>
                <option value="Piso 7">Piso 7</option>
                <option value="Piso 8">Piso 8</option>
                <option value="Piso 9">Piso 9</option>
                <option value="Piso 10">Piso 10</option>
                <option value="Piso 11">Piso 11</option>
                <option value="Piso 12">Piso 12</option>
                <option value="Piso 13">Piso 13</option>
                <option value="Piso 14">Piso 14</option>
                <option value="Piso 15">Piso 15</option>
              </select>
              <label>Aforo</label>
              <input type="number" id="aforo" name="aforo" class="form-control form-control-sm" required="">
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


