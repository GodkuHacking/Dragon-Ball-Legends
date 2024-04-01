.class public final synthetic Lcom/facebook/share/internal/-$$Lambda$ShareInternalUtility$V2ZpSeTx2J6GGFG5YyNXvJIqlJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;


# static fields
.field public static final synthetic INSTANCE:Lcom/facebook/share/internal/-$$Lambda$ShareInternalUtility$V2ZpSeTx2J6GGFG5YyNXvJIqlJU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/share/internal/-$$Lambda$ShareInternalUtility$V2ZpSeTx2J6GGFG5YyNXvJIqlJU;

    invoke-direct {v0}, Lcom/facebook/share/internal/-$$Lambda$ShareInternalUtility$V2ZpSeTx2J6GGFG5YyNXvJIqlJU;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/-$$Lambda$ShareInternalUtility$V2ZpSeTx2J6GGFG5YyNXvJIqlJU;->INSTANCE:Lcom/facebook/share/internal/-$$Lambda$ShareInternalUtility$V2ZpSeTx2J6GGFG5YyNXvJIqlJU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toJSONObject(Lcom/facebook/share/model/SharePhoto;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p1}, Lcom/facebook/share/internal/ShareInternalUtility;->lambda$V2ZpSeTx2J6GGFG5YyNXvJIqlJU(Lcom/facebook/share/model/SharePhoto;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
