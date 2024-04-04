.class public Lcom/growthbeat/GrowthbeatException;
.super Ljava/lang/RuntimeException;
.source "GrowthbeatException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/growthbeat/GrowthbeatException;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/growthbeat/GrowthbeatException;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/growthbeat/GrowthbeatException;->code:I

    .line 19
    invoke-virtual {p0, p2}, Lcom/growthbeat/GrowthbeatException;->setCode(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/growthbeat/GrowthbeatException;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/growthbeat/GrowthbeatException;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/growthbeat/GrowthbeatException;->code:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/growthbeat/GrowthbeatException;->code:I

    return-void
.end method
