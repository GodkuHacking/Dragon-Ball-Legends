.class public final synthetic Lcom/facebook/appevents/codeless/-$$Lambda$CodelessManager$vzd3Vq5Ies9LLUeAp7KTjGDCc58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;


# instance fields
.field public final synthetic f$0:Lcom/facebook/internal/FetchedAppSettings;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/FetchedAppSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/codeless/-$$Lambda$CodelessManager$vzd3Vq5Ies9LLUeAp7KTjGDCc58;->f$0:Lcom/facebook/internal/FetchedAppSettings;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/-$$Lambda$CodelessManager$vzd3Vq5Ies9LLUeAp7KTjGDCc58;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onShake()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/appevents/codeless/-$$Lambda$CodelessManager$vzd3Vq5Ies9LLUeAp7KTjGDCc58;->f$0:Lcom/facebook/internal/FetchedAppSettings;

    iget-object v1, p0, Lcom/facebook/appevents/codeless/-$$Lambda$CodelessManager$vzd3Vq5Ies9LLUeAp7KTjGDCc58;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/appevents/codeless/CodelessManager;->lambda$vzd3Vq5Ies9LLUeAp7KTjGDCc58(Lcom/facebook/internal/FetchedAppSettings;Ljava/lang/String;)V

    return-void
.end method
