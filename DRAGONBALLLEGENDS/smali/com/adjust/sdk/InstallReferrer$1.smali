.class Lcom/adjust/sdk/InstallReferrer$1;
.super Ljava/lang/Object;
.source "InstallReferrer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/InstallReferrer;-><init>(Landroid/content/Context;Lcom/adjust/sdk/InstallReferrerReadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/InstallReferrer;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/InstallReferrer;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/adjust/sdk/InstallReferrer$1;->this$0:Lcom/adjust/sdk/InstallReferrer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer$1;->this$0:Lcom/adjust/sdk/InstallReferrer;

    invoke-virtual {v0}, Lcom/adjust/sdk/InstallReferrer;->startConnection()V

    return-void
.end method
