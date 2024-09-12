# lib/tasks/delayed_job_cleaner.rake
namespace :jobs do
  desc "Limpia trabajos pendientes en la cola de Delayed Job"
  task clean: :environment do
    loop do
      # Obtiene la cantidad de trabajos pendientes
      job_count = Delayed::Job.count

      if job_count > 0
        puts "Hay #{job_count} trabajos en cola"

        # Obtiene el primer trabajo
        job = Delayed::Job.first

        if job
          job_id = job.id
          job.destroy
          puts "Se eliminó el trabajo con ID #{job_id}"
        end
      else
        puts "No hay trabajos en cola"
      end

      # Espera 5 segundos antes de la siguiente iteración
      sleep(5)
    end
  end
end
