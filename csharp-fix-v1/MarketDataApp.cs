using System;
using QuickFix;
using QuickFix.Fields;
using System.Collections.Generic;

namespace csharp_fix
{
    public class MarketDataApp : QuickFix.MessageCracker, QuickFix.IApplication
    {
        Session _session = null;

        #region IApplication interface overrides

        public void OnCreate(SessionID sessionID)
        {
            _session = Session.LookupSession(sessionID);
        }

        public void OnLogon(SessionID sessionID)
        {
            Console.WriteLine("Logon - " + sessionID.ToString());
        }
        public void OnLogout(SessionID sessionID)
        {
            Console.WriteLine("Logout - " + sessionID.ToString());
        }

        public void FromAdmin(Message message, SessionID sessionID)
        {
        }
        public void ToAdmin(Message message, SessionID sessionID)
        {
        }

        public void FromApp(Message message, SessionID sessionID)
        {
            Console.WriteLine("IN:  " + message.ToString());
            try
            {
                Crack(message, sessionID);
            }
            catch (Exception ex)
            {
                Console.WriteLine("==Cracker exception==");
                Console.WriteLine(ex.ToString());
                Console.WriteLine(ex.StackTrace);
            }
        }

        public void ToApp(Message message, SessionID sessionID)
        {
            Console.WriteLine("OUT: " + message.ToString());
        }
        #endregion

        public void OnMessage(QuickFix.FIX44.MarketDataIncrementalRefresh msg, 
            SessionID s)
        {
            for (int idx = 0; idx < msg.NoMDEntries.getValue(); idx ++)
            {
                var trade = new QuickFix.FIX44.MarketDataIncrementalRefresh.NoMDEntriesGroup();
                msg.GetGroup(idx + 1, trade);

                Console.WriteLine($"Trade {trade.MDUpdateAction} @ {trade.Symbol}:");
                Console.WriteLine($" ID: {trade.MDEntryID}");
                Console.WriteLine($" Date: {trade.MDEntryDate}");
                Console.WriteLine($" Time: {trade.MDEntryTime}");
                Console.WriteLine($" Px: {trade.MDEntryPx}");
                Console.WriteLine($" Size: {trade.MDEntrySize}");
                Console.WriteLine($" TakerSide: {trade.MDEntryOriginator}");
            }
            Console.WriteLine($"--------------------------------------------------");
        }

        public void OnMessage(QuickFix.FIX44.MarketDataSnapshotFullRefresh msg,
            SessionID s)
        {
            for (int idx = 0; idx < msg.NoMDEntries.getValue(); idx++)
            {
                var level = new QuickFix.FIX44.MarketDataSnapshotFullRefresh.NoMDEntriesGroup();
                msg.GetGroup(idx + 1, level);
                Console.WriteLine($"Orderbook {level.MDEntryType} @ {msg.Symbol}:");
                Console.WriteLine($" Date: {level.MDEntryDate}");
                Console.WriteLine($" Time: {level.MDEntryTime}");
                Console.WriteLine($" Px: {level.MDEntryPx}");
                Console.WriteLine($" Size: {level.MDEntrySize}");
            }
        }

        private void SendMessage(Message m)
        {
            if (_session != null)
                _session.Send(m);
            else
            {
                // This probably won't ever happen.
                Console.WriteLine("Can't send message: session not created.");
            }
        }
    }
}