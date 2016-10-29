using MVVMPattern.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVVMPattern.ViewModel
{
    public class PersonasViewModel : ViewModelBase
    {
        ObservableCollection<Persona> personas;
        Persona personaActual;
        RelayCommand nuevoCommand, guardarCommand;

        public PersonasViewModel()
        {
            this.Personas = new ObservableCollection<Persona>();
            this.nuevoCommand = new RelayCommand(p => this.Nuevo(), p => true);
            this.guardarCommand = new RelayCommand(p => this.Guardar(), p => this.sePuedeGuardar());
            Nuevo();
        }
        
        #region Propiedades
        public ObservableCollection<Persona> Personas
        {
            get
            {
                return personas;
            }
            set
            {
                personas = value;
                OnPropertyChanged("Personas");
            }
        }

        public Persona PersonaActual
        {
            get
            {
                return personaActual;
            }
            set
            {
                personaActual = value;
                OnPropertyChanged("PersonaActual");
            }
        }

        public RelayCommand NuevoCommand
        {
            get
            {
                return nuevoCommand;
            }
        }

        public RelayCommand GuardarCommand
        {
            get
            {
                return guardarCommand;
            }
        }
        #endregion

        #region Métodos
        private void Guardar()
        {
            if (!personas.Contains(personaActual))
                Personas.Add(personaActual);
        }

        private bool sePuedeGuardar()
        {
            return personaActual != null &&
                !string.IsNullOrEmpty(personaActual.Nombre) &&
                !string.IsNullOrEmpty(personaActual.Apellidos);
        }

        private void Nuevo()
        {
            this.PersonaActual = new Persona();
        }
        #endregion
    }
}
