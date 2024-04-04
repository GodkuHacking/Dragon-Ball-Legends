.class public final Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;
.super Ljava/lang/Object;
.source "CriFsWebInstallerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criware/filesystem/CriFsWebInstallerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RequestHeaders"
.end annotation


# instance fields
.field private fieldAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/criware/filesystem/CriFsWebInstallerManager;


# direct methods
.method public constructor <init>(Lcom/criware/filesystem/CriFsWebInstallerManager;I)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->this$0:Lcom/criware/filesystem/CriFsWebInstallerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    mul-int/lit8 p2, p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    return-void
.end method

.method private add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object p1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeAll(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getFieldName(I)Ljava/lang/String;
    .locals 1

    mul-int/lit8 p1, p1, 0x2

    if-ltz p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    if-ltz p1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public length()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->fieldAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->removeAll(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
