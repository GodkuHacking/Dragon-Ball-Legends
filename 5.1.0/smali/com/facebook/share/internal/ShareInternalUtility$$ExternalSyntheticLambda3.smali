.class public final synthetic Lcom/facebook/share/internal/ShareInternalUtility$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;


# static fields
.field public static final synthetic INSTANCE:Lcom/facebook/share/internal/ShareInternalUtility$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/share/internal/ShareInternalUtility$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/facebook/share/internal/ShareInternalUtility$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/ShareInternalUtility$$ExternalSyntheticLambda3;->INSTANCE:Lcom/facebook/share/internal/ShareInternalUtility$$ExternalSyntheticLambda3;

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

    invoke-static {p1}, Lcom/facebook/share/internal/ShareInternalUtility;->$r8$lambda$J7ybwyhA0f1j4jYpkjNtFmqiUlA(Lcom/facebook/share/model/SharePhoto;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
