.class public final synthetic Lcom/facebook/internal/-$$Lambda$FetchedAppGateKeepersManager$HKeHjtqBLX5n5K-8E_A_OLNOasI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/-$$Lambda$FetchedAppGateKeepersManager$HKeHjtqBLX5n5K-8E_A_OLNOasI;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/internal/-$$Lambda$FetchedAppGateKeepersManager$HKeHjtqBLX5n5K-8E_A_OLNOasI;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/internal/-$$Lambda$FetchedAppGateKeepersManager$HKeHjtqBLX5n5K-8E_A_OLNOasI;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/internal/-$$Lambda$FetchedAppGateKeepersManager$HKeHjtqBLX5n5K-8E_A_OLNOasI;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/internal/-$$Lambda$FetchedAppGateKeepersManager$HKeHjtqBLX5n5K-8E_A_OLNOasI;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/internal/-$$Lambda$FetchedAppGateKeepersManager$HKeHjtqBLX5n5K-8E_A_OLNOasI;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->lambda$HKeHjtqBLX5n5K-8E_A_OLNOasI(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
