using SR_26_2021_POP2022.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SR_26_2021_POP2022.Services
{
    class ProfessorService : IUserService, IProfessorService
    {
        public void DeleteUser(string email)
        {
            throw new NotImplementedException();
        }

        public List<RegistrovaniKorisnik> ListAllStudents()
        {
            throw new NotImplementedException();
        }

        public void ReadUsers(string filename)
        {
            Data.Instance.Profesori = new ObservableCollection<Profesor>();
            using (StreamReader file = new StreamReader(@"../../Resources/" + filename))
            {
                string line;

                while ((line = file.ReadLine()) != null)
                {
                    string[] profesorIzFajla = line.Split(';');

                    RegistrovaniKorisnik registrovaniKorisnik = Data.Instance.Korisnici.ToList().Find(korisnik => korisnik.Email.Equals(profesorIzFajla[0]));
                    //(Liskov substitution principle)
                    Profesor profesor = new Profesor
                    {
                        Korisnik = registrovaniKorisnik
                    };

                    Data.Instance.Profesori.Add(profesor);
                }
            }
        }

        public void SaveUsers(string filename)
        {
            using (StreamWriter file = new StreamWriter(@"../../Resources/" + filename))
            {
                foreach (Profesor profesor in Data.Instance.Profesori)
                {
                    file.WriteLine(profesor.ProfesorZaUpisUFajl());
                }
            }
        }
    }
}
