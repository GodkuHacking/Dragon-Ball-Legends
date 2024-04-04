.class public final synthetic Lcom/facebook/internal/-$$Lambda$FetchedAppSettingsManager$g7wm_6qBdcfxFx1P0VEhJxOu3AI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;

.field public final synthetic f$1:Lcom/facebook/internal/FetchedAppSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;Lcom/facebook/internal/FetchedAppSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/-$$Lambda$FetchedAppSettingsManager$g7wm_6qBdcfxFx1P0VEhJxOu3AI;->f$0:Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;

    iput-object p2, p0, Lcom/facebook/internal/-$$Lambda$FetchedAppSettingsManager$g7wm_6qBdcfxFx1P0VEhJxOu3AI;->f$1:Lcom/facebook/internal/FetchedAppSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/internal/-$$Lambda$FetchedAppSettingsManager$g7wm_6qBdcfxFx1P0VEhJxOu3AI;->f$0:Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;

    iget-object v1, p0, Lcom/facebook/internal/-$$Lambda$FetchedAppSettingsManager$g7wm_6qBdcfxFx1P0VEhJxOu3AI;->f$1:Lcom/facebook/internal/FetchedAppSettings;

    invoke-static {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->lambda$g7wm_6qBdcfxFx1P0VEhJxOu3AI(Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;Lcom/facebook/internal/FetchedAppSettings;)V

    return-void
.end method
