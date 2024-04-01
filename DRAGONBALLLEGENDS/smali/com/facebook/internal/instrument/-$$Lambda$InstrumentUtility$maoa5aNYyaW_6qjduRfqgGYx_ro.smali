.class public final synthetic Lcom/facebook/internal/instrument/-$$Lambda$InstrumentUtility$maoa5aNYyaW_6qjduRfqgGYx_ro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/facebook/internal/instrument/-$$Lambda$InstrumentUtility$maoa5aNYyaW_6qjduRfqgGYx_ro;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/instrument/-$$Lambda$InstrumentUtility$maoa5aNYyaW_6qjduRfqgGYx_ro;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/-$$Lambda$InstrumentUtility$maoa5aNYyaW_6qjduRfqgGYx_ro;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/-$$Lambda$InstrumentUtility$maoa5aNYyaW_6qjduRfqgGYx_ro;->INSTANCE:Lcom/facebook/internal/instrument/-$$Lambda$InstrumentUtility$maoa5aNYyaW_6qjduRfqgGYx_ro;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/facebook/internal/instrument/InstrumentUtility;->lambda$maoa5aNYyaW_6qjduRfqgGYx_ro(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
