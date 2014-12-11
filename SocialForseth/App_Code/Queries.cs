using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace SocialForseth
{
	public static class Queries
	{
		/// <summary>
		/// Checks the login info of the user. If it's good, returns the user id. If the
		/// password is bad or the user doesn't exist, returns an integer less than 0.
		/// </summary>
		/// <param name="user">The user attempting login.</param>
		/// <param name="passhash">The computed SHA1 hash of the input password.</param>
		/// <returns></returns>
		public static int CheckLogin(string user, string passhash)
		{
			int uid = -1;
			using (HCIDataEntities1 db = new HCIDataEntities1())
			{
				var query = from a in db.accounts
					   where a.handle == user &&
					   a.password == passhash
					   select a;
				if (query.Any())
				{
					uid = query.First().id;
				}
			}
			return uid;
		}

        /// <summary>
        /// Gets all information about an account, except for the password hash.
        /// </summary>
        /// <param name="uid">The user id.</param>
        /// <returns></returns>
        public static account GetAccount(int uid)
        {
            account acc;
            using (HCIDataEntities1 db = new HCIDataEntities1())
            {
                acc = (from a in db.accounts
                       where a.id == uid
                       select a).First();
            }
            // clear password from result before returning
            acc.password = null;
            return acc;
        }

        public static void AddClaim(string account, string amount, string location)
        {
            claim c = new claim();
            c.account = int.Parse(account);
            c.amount = int.Parse(amount);
            c.location = location;
            using (HCIDataEntities1 db = new HCIDataEntities1())
            {
                db.claims.Add(c);
                db.SaveChanges();
            }
        }

        public static ICollection<claim> GetClaims(int uid)
        {
            ICollection<claim> claims = null;
            using ( HCIDataEntities1 db = new HCIDataEntities1())
            {
                account acc = (from a in db.accounts
                      where a.id == uid
                      select a).First();
                claims = acc.claims;
            }
            return claims;
        }
	}
}