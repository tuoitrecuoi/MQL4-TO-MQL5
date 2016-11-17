//+------------------------------------------------------------------+
//|                                                        IOHLC.mqh |
//|      Copyright 2016, Marco vd Heijden, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2016, Marco vd Heijden, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"

//+------------------------------------------------------------------+
//| iTime function                                                   |
//+------------------------------------------------------------------+
datetime iTime(string symbol,ENUM_TIMEFRAMES timeframe,int shift)
  {
   datetime time_array[];
   ArrayResize(time_array,shift,1);
   ArraySetAsSeries(time_array,1);
   int copy=CopyTime(symbol,timeframe,0,shift+1,time_array);
   datetime result=time_array[shift];
   return (result);
  }
//+------------------------------------------------------------------+
//| iOpen function                                                   |
//+------------------------------------------------------------------+
double iOpen(string symbol,ENUM_TIMEFRAMES timeframe,int shift)
  {
   double open_array[];
   ArrayResize(open_array,shift,1);
   ArraySetAsSeries(open_array,1);
   int copy=CopyOpen(symbol,timeframe,0,shift+1,open_array);
   double result=open_array[shift];
   return (result);
  }
//+------------------------------------------------------------------+
//| iHigh function                                                   |
//+------------------------------------------------------------------+
double iHigh(string symbol,ENUM_TIMEFRAMES timeframe,int shift)
  {
   double high_array[];
   ArrayResize(high_array,shift,1);
   ArraySetAsSeries(high_array,1);
   int copy=CopyOpen(symbol,timeframe,0,shift+1,high_array);
   double result=high_array[shift];
   return (result);
  }
//+------------------------------------------------------------------+
//| iLow function                                                    |
//+------------------------------------------------------------------+
double iLow(string symbol,ENUM_TIMEFRAMES timeframe,int shift)
  {
   double low_array[];
   ArrayResize(low_array,shift,1);
   ArraySetAsSeries(low_array,1);
   int copy=CopyOpen(symbol,timeframe,0,shift+1,low_array);
   double result=low_array[shift];
   return (result);
  }
//+------------------------------------------------------------------+
//| iClose function                                                  |
//+------------------------------------------------------------------+
double iClose(string symbol,ENUM_TIMEFRAMES timeframe,int shift)
  {
   double close_array[];
   ArrayResize(close_array,shift,1);
   ArraySetAsSeries(close_array,1);
   int copy=CopyOpen(symbol,timeframe,0,shift+1,close_array);
   double result=close_array[shift];
   return (result);
  }
//+------------------------------------------------------------------+
