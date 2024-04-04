.class public final Lcom/facebook/gamingservices/CustomUpdate;
.super Ljava/lang/Object;
.source "CustomUpdate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/facebook/gamingservices/CustomUpdate;",
        "",
        "()V",
        "newCustomUpdateRequest",
        "Lcom/facebook/GraphRequest;",
        "content",
        "Lcom/facebook/gamingservices/model/CustomUpdateContent;",
        "callback",
        "Lcom/facebook/GraphRequest$Callback;",
        "facebook-gamingservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/gamingservices/CustomUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/gamingservices/CustomUpdate;

    invoke-direct {v0}, Lcom/facebook/gamingservices/CustomUpdate;-><init>()V

    sput-object v0, Lcom/facebook/gamingservices/CustomUpdate;->INSTANCE:Lcom/facebook/gamingservices/CustomUpdate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newCustomUpdateRequest(Lcom/facebook/gamingservices/model/CustomUpdateContent;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "content"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/facebook/GraphRequest;->Companion:Lcom/facebook/GraphRequest$Companion;

    .line 43
    sget-object v1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v1}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/facebook/gamingservices/model/CustomUpdateContent;->toGraphRequestContent()Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "me/custom_update"

    .line 42
    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/facebook/GraphRequest$Companion;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    return-object p0
.end method
