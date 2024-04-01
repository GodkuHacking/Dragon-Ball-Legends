.class Lcom/adjust/sdk/Util$3;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/Util;->isPlayTrackingEnabled(Landroid/content/Context;Ljava/lang/Object;J)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$advertisingInfoObject:Ljava/lang/Object;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/adjust/sdk/Util$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/adjust/sdk/Util$3;->val$advertisingInfoObject:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/adjust/sdk/Util$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/adjust/sdk/Util$3;->val$advertisingInfoObject:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/adjust/sdk/Reflection;->isPlayTrackingEnabled(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/adjust/sdk/Util$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
