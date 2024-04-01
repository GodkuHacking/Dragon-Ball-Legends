.class public Lcom/growthbeat/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# instance fields
.field private silent:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/growthbeat/Logger;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/growthbeat/Logger;->silent:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/growthbeat/Logger;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/growthbeat/Logger;->setTag(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/growthbeat/Logger;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/growthbeat/Logger;->setSilent(Z)V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/growthbeat/Logger;->silent:Z

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/growthbeat/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/growthbeat/Logger;->silent:Z

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/growthbeat/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getSilent()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/growthbeat/Logger;->silent:Z

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/growthbeat/Logger;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/growthbeat/Logger;->silent:Z

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/growthbeat/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setSilent(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/growthbeat/Logger;->silent:Z

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/growthbeat/Logger;->tag:Ljava/lang/String;

    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/growthbeat/Logger;->silent:Z

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/growthbeat/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
