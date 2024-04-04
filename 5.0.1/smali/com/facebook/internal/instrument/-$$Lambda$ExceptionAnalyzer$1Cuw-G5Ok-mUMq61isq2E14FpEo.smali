.class public final synthetic Lcom/facebook/internal/instrument/-$$Lambda$ExceptionAnalyzer$1Cuw-G5Ok-mUMq61isq2E14FpEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/internal/instrument/InstrumentData;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/instrument/InstrumentData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/instrument/-$$Lambda$ExceptionAnalyzer$1Cuw-G5Ok-mUMq61isq2E14FpEo;->f$0:Lcom/facebook/internal/instrument/InstrumentData;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/instrument/-$$Lambda$ExceptionAnalyzer$1Cuw-G5Ok-mUMq61isq2E14FpEo;->f$0:Lcom/facebook/internal/instrument/InstrumentData;

    invoke-static {v0, p1}, Lcom/facebook/internal/instrument/ExceptionAnalyzer;->lambda$1Cuw-G5Ok-mUMq61isq2E14FpEo(Lcom/facebook/internal/instrument/InstrumentData;Lcom/facebook/GraphResponse;)V

    return-void
.end method
