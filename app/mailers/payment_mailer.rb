class PaymentMailer < ApplicationMailer
    def payment_notification(payment)
        @payment = payment
        mail(to: "admin@example.com", subject: "Nouveau paiement effectué")
      end

      def process_payment
        # Code de traitement du paiement
      
        if payment.successful?
          PaymentMailer.payment_notification(payment).deliver_now
          # Autres actions à effectuer après le paiement
        end
      end      
end
