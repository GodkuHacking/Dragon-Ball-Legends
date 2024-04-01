.class public Lcom/facebook/gamingservices/model/ContextChooseContent;
.super Ljava/lang/Object;
.source "ContextChooseContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;
    }
.end annotation


# instance fields
.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:Ljava/lang/Integer;

.field private final minSize:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parcel"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->filters:Ljava/util/List;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->maxSize:Ljava/lang/Integer;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->minSize:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->access$000(Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->filters:Ljava/util/List;

    .line 38
    invoke-static {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->access$100(Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->maxSize:Ljava/lang/Integer;

    .line 39
    invoke-static {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->access$200(Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->minSize:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;Lcom/facebook/gamingservices/model/ContextChooseContent$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/gamingservices/model/ContextChooseContent;-><init>(Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->filters:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMaxSize()Ljava/lang/Integer;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->maxSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinSize()Ljava/lang/Integer;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->minSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "out",
            "flags"
        }
    .end annotation

    .line 62
    iget-object p2, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->filters:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 63
    iget-object p2, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->maxSize:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object p2, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->minSize:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
