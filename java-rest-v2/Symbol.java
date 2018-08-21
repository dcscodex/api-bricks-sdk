import java.time.Instant;

/**
 * Stores all the state for a symbol, as described in <a href= "https://docs.coinapi.io/#list-all-symbols">https://docs.coinapi.io/#list-all-symbols</a>.
 * <p>
 * This class is multithread safe: it is <a href="http://www.ibm.com/developerworks/java/library/j-jtp02183.html">immutable</a>.
 * In particular, it is always <a href="http://www.ibm.com/developerworks/java/library/j-jtp0618.html">properly constructed</a>,
 * all of its fields are final,
 * and none of their state can be changed after construction.
 * See p. 53 of <a href="http://www.javaconcurrencyinpractice.com">Java Concurrency In Practice</a> for more discussion.
 */
public class Symbol {
	
	/** Our symbol identifier, see table below for format description. */
	private final String symbol_id;
	
	/** Our identifier of the exchange where symbol is traded. */
	private final String exchange_id;
	
	/** Type of symbol (possible values are: SPOT, FUTURES or OPTION) */
	private final Symbol_type symbol_type;
	
	/** FX Spot base asset identifier, for derivatives it's contact underlying (e.g. BTC for BTC/USD) */
	private final String asset_id_base;
	
	/** FX Spot quote asset identifier, for derivatives it's contract underlying (e.g. USD for BTC/USD) */
	private final String asset_id_quote;
	
	/** Boolean value representing option type. true for Call options, false for Put options */
	private final boolean option_type_is_call;
	
	/** Price at which option contract can be exercised */
	private final double option_strike_price;
	
	/** Base asset amount of underlying spot which single option represents */
	private final double option_contract_unit;
	
	/** Option exercise style. Can be EUROPEAN or AMERICAN */
	private final Option_exercise_style option_exercise_style;
	
	/** Option contract expiration time */
	private final Instant option_expiration_time;
	
	/** Predetermined time of futures contract delivery date */
	private final Instant future_delivery_time;
	
	/**
	 * Convenience constructor for a non-option and non-futures symbol which only has args for the mandatory fields.
	 * It calls the fundamental constructor with sensible defaults for those args that correspond to the optional fields.
	 */
	public Symbol(String symbol_id, String exchange_id, Symbol_type symbol_type, String asset_id_base, String asset_id_quote) {
		this(symbol_id, exchange_id, symbol_type, asset_id_base, asset_id_quote, false, 0.0, 0.0, null, null, null);
	}
	
	/**
	 * Fundamental constructor which has args for every field.
	 */
	public Symbol(
		String symbol_id, String exchange_id, Symbol_type symbol_type, String asset_id_base, String asset_id_quote,
		boolean option_type_is_call, double option_strike_price, double option_contract_unit, Option_exercise_style option_exercise_style,
		Instant option_expiration_time, Instant future_delivery_time
	) {
		this.symbol_id = symbol_id;
		this.exchange_id = exchange_id;
		this.symbol_type = symbol_type;
		this.asset_id_base = asset_id_base;
		this.asset_id_quote = asset_id_quote;
		this.option_type_is_call = option_type_is_call;
		this.option_strike_price = option_strike_price;
		this.option_contract_unit = option_contract_unit;
		this.option_exercise_style = option_exercise_style;
		this.option_expiration_time = option_expiration_time;
		this.future_delivery_time = future_delivery_time;
	}
	
	public String get_symbol_id() {
		return symbol_id;
	}
	
	public String get_exchange_id() {
		return exchange_id;
	}
	
	public Symbol_type get_symbol_type() {
		return symbol_type;
	}
	
	public String get_asset_id_base() {
		return asset_id_base;
	}
	
	public String get_asset_id_quote() {
		return asset_id_quote;
	}
	
	public boolean get_option_type_is_call() {
		return option_type_is_call;
	}
	
	public double get_option_strike_price() {
		return option_strike_price;
	}
	
	public double get_option_contract_unit() {
		return option_contract_unit;
	}
	
	public Option_exercise_style get_option_exercise_style() {
		return option_exercise_style;
	}
	
	public Instant get_option_expiration_time() {
		return option_expiration_time;
	}
	
	public Instant get_future_delivery_time() {
		return future_delivery_time;
	}
	
}
