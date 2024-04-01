.class Lcom/adjust/sdk/AdjustLinkResolution$1;
.super Ljava/lang/Object;
.source "AdjustLinkResolution.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AdjustLinkResolution;->resolveLink(Ljava/lang/String;[Ljava/lang/String;Lcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adjustLinkResolutionCallback:Lcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;

.field final synthetic val$finalOriginalURL:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;Lcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/adjust/sdk/AdjustLinkResolution$1;->val$finalOriginalURL:Ljava/net/URL;

    iput-object p2, p0, Lcom/adjust/sdk/AdjustLinkResolution$1;->val$adjustLinkResolutionCallback:Lcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/adjust/sdk/AdjustLinkResolution$1;->val$finalOriginalURL:Ljava/net/URL;

    iget-object v1, p0, Lcom/adjust/sdk/AdjustLinkResolution$1;->val$adjustLinkResolutionCallback:Lcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/adjust/sdk/AdjustLinkResolution;->access$000(Ljava/net/URL;ILcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;)V

    return-void
.end method
