package org.pdfbox.operator{

	import org.pdfbox.cos.COSNumber;
	import org.pdfbox.utils.PDFOperator;

	/**
	 * <p>Titre : PDFEngine Modification.</p>
	 * <p>Description : Structal modification of the PDFEngine class : the long sequence of 
	 *  conditions in processOperator is remplaced by this strategy pattern</p>
	 * <p>Copyright : Copyright (c) 2004</p>
	 * <p>Soci�t?: DBGS</p>
	 * @author Huault : huault@free.fr
	 * @version $Revision: 1.4 $
	 */

	public class SetWordSpacing extends OperatorProcessor 
	{
		/**
		 * Tw Set word spacing.
		 * @param operator The operator that is being executed.
		 * @param arguments List
		 */
		override public function process( operator:PDFOperator, arguments:Array):void
		{
			//set word spacing
			var wordSpacing:COSNumber = arguments.get( 0 ) as COSNumber;
			context.getGraphicsState().getTextState().setWordSpacing( wordSpacing.floatValue() );
		}

	}
}