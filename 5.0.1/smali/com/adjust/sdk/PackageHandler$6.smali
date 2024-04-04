.class Lcom/adjust/sdk/PackageHandler$6;
.super Ljava/lang/Object;
.source "PackageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/PackageHandler;->updatePackages(Lcom/adjust/sdk/SessionParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/PackageHandler;

.field final synthetic val$sessionParametersCopy:Lcom/adjust/sdk/SessionParameters;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/PackageHandler;Lcom/adjust/sdk/SessionParameters;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/adjust/sdk/PackageHandler$6;->this$0:Lcom/adjust/sdk/PackageHandler;

    iput-object p2, p0, Lcom/adjust/sdk/PackageHandler$6;->val$sessionParametersCopy:Lcom/adjust/sdk/SessionParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler$6;->this$0:Lcom/adjust/sdk/PackageHandler;

    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler$6;->val$sessionParametersCopy:Lcom/adjust/sdk/SessionParameters;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/PackageHandler;->updatePackagesI(Lcom/adjust/sdk/SessionParameters;)V

    return-void
.end method
