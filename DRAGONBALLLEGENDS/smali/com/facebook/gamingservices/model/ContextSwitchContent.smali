.class public final Lcom/facebook/gamingservices/model/ContextSwitchContent;
.super Ljava/lang/Object;
.source "ContextSwitchContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;
    }
.end annotation


# instance fields
.field private final contextID:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parcel"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextSwitchContent;->contextID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;->access$000(Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextSwitchContent;->contextID:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;Lcom/facebook/gamingservices/model/ContextSwitchContent$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/gamingservices/model/ContextSwitchContent;-><init>(Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContextID()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextSwitchContent;->contextID:Ljava/lang/String;

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

    .line 46
    iget-object p2, p0, Lcom/facebook/gamingservices/model/ContextSwitchContent;->contextID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
