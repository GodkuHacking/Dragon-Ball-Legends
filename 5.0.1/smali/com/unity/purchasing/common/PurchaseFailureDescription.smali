.class public Lcom/unity/purchasing/common/PurchaseFailureDescription;
.super Ljava/lang/Object;
.source "PurchaseFailureDescription.java"


# instance fields
.field public message:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public reason:Lcom/unity/purchasing/common/PurchaseFailureReason;

.field public storeSpecificErrorCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity/purchasing/common/PurchaseFailureReason;)V
    .locals 1

    const-string v0, ""

    .line 14
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/unity/purchasing/common/PurchaseFailureDescription;-><init>(Ljava/lang/String;Lcom/unity/purchasing/common/PurchaseFailureReason;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/unity/purchasing/common/PurchaseFailureReason;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->productId:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->reason:Lcom/unity/purchasing/common/PurchaseFailureReason;

    .line 9
    iput-object p3, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->message:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->storeSpecificErrorCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 18
    instance-of v0, p1, Lcom/unity/purchasing/common/PurchaseFailureDescription;

    if-eqz v0, :cond_0

    .line 19
    check-cast p1, Lcom/unity/purchasing/common/PurchaseFailureDescription;

    invoke-virtual {p0, p1}, Lcom/unity/purchasing/common/PurchaseFailureDescription;->equalsAllFields(Lcom/unity/purchasing/common/PurchaseFailureDescription;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equalsAllFields(Lcom/unity/purchasing/common/PurchaseFailureDescription;)Z
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->productId:Ljava/lang/String;

    iget-object v1, p1, Lcom/unity/purchasing/common/PurchaseFailureDescription;->productId:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->reason:Lcom/unity/purchasing/common/PurchaseFailureReason;

    iget-object v1, p1, Lcom/unity/purchasing/common/PurchaseFailureDescription;->reason:Lcom/unity/purchasing/common/PurchaseFailureReason;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/unity/purchasing/common/PurchaseFailureDescription;->message:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->storeSpecificErrorCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/unity/purchasing/common/PurchaseFailureDescription;->storeSpecificErrorCode:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "productId: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->reason:Lcom/unity/purchasing/common/PurchaseFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " message: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" storeSpecificErrorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->storeSpecificErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
