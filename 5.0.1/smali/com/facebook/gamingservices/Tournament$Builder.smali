.class public final Lcom/facebook/gamingservices/Tournament$Builder;
.super Ljava/lang/Object;
.source "Tournament.kt"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/Tournament;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "Lcom/facebook/gamingservices/Tournament;",
        "Lcom/facebook/gamingservices/Tournament$Builder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTournament.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tournament.kt\ncom/facebook/gamingservices/Tournament$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1#2:126\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0080\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\t\u0010\u001a\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J7\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\u0010\u0010\u0005\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\t\u0010#\u001a\u00020$H\u00d6\u0001J\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004J\u0012\u0010%\u001a\u00020\u00002\u0008\u0010&\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\t\u0010\'\u001a\u00020\u0004H\u00d6\u0001R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000c\"\u0004\u0008\u0016\u0010\u000eR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000c\"\u0004\u0008\u0018\u0010\u000e\u00a8\u0006("
    }
    d2 = {
        "Lcom/facebook/gamingservices/Tournament$Builder;",
        "Lcom/facebook/share/model/ShareModelBuilder;",
        "Lcom/facebook/gamingservices/Tournament;",
        "identifier",
        "",
        "expiration",
        "Ljava/time/ZonedDateTime;",
        "title",
        "payload",
        "(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;)V",
        "endTime",
        "getEndTime",
        "()Ljava/lang/String;",
        "setEndTime",
        "(Ljava/lang/String;)V",
        "getExpiration",
        "()Ljava/time/ZonedDateTime;",
        "setExpiration",
        "(Ljava/time/ZonedDateTime;)V",
        "getIdentifier",
        "setIdentifier",
        "getPayload",
        "setPayload",
        "getTitle",
        "setTitle",
        "build",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "readFrom",
        "tournament",
        "toString",
        "facebook-gamingservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private endTime:Ljava/lang/String;

.field private expiration:Ljava/time/ZonedDateTime;

.field private identifier:Ljava/lang/String;

.field private payload:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    .line 72
    iput-object p3, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 69
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/gamingservices/Tournament$Builder;-><init>(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/facebook/gamingservices/Tournament$Builder;Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/gamingservices/Tournament$Builder;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/gamingservices/Tournament$Builder;->copy(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/gamingservices/Tournament;
    .locals 5

    .line 89
    new-instance v0, Lcom/facebook/gamingservices/Tournament;

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/gamingservices/Tournament$Builder;->endTime:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/gamingservices/Tournament;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/facebook/gamingservices/Tournament$Builder;->build()Lcom/facebook/gamingservices/Tournament;

    move-result-object v0

    return-object v0
.end method

.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/gamingservices/Tournament$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/gamingservices/Tournament$Builder;-><init>(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/facebook/gamingservices/Tournament$Builder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/facebook/gamingservices/Tournament$Builder;

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    iget-object v3, p1, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    iget-object p1, p1, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final expiration(Ljava/time/ZonedDateTime;)Lcom/facebook/gamingservices/Tournament$Builder;
    .locals 3

    .line 77
    move-object v0, p0

    check-cast v0, Lcom/facebook/gamingservices/Tournament$Builder;

    .line 78
    invoke-virtual {v0, p1}, Lcom/facebook/gamingservices/Tournament$Builder;->setExpiration(Ljava/time/ZonedDateTime;)V

    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    if-eqz p1, :cond_0

    .line 81
    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p1, v1}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/gamingservices/Tournament$Builder;->setEndTime(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getEndTime()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiration()Ljava/time/ZonedDateTime;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final identifier(Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    move-object v0, p0

    check-cast v0, Lcom/facebook/gamingservices/Tournament$Builder;

    invoke-virtual {v0, p1}, Lcom/facebook/gamingservices/Tournament$Builder;->setIdentifier(Ljava/lang/String;)V

    return-object v0
.end method

.method public final payload(Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;
    .locals 1

    .line 86
    move-object v0, p0

    check-cast v0, Lcom/facebook/gamingservices/Tournament$Builder;

    invoke-virtual {v0, p1}, Lcom/facebook/gamingservices/Tournament$Builder;->setPayload(Ljava/lang/String;)V

    return-object v0
.end method

.method public readFrom(Lcom/facebook/gamingservices/Tournament;)Lcom/facebook/gamingservices/Tournament$Builder;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/gamingservices/Tournament;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/gamingservices/Tournament$Builder;->identifier(Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lcom/facebook/gamingservices/Tournament;->getExpiration()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/gamingservices/Tournament$Builder;->expiration(Ljava/time/ZonedDateTime;)Lcom/facebook/gamingservices/Tournament$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/facebook/gamingservices/Tournament;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/gamingservices/Tournament$Builder;->title(Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/facebook/gamingservices/Tournament;->getPayload()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/gamingservices/Tournament$Builder;->payload(Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 99
    move-object p1, p0

    check-cast p1, Lcom/facebook/gamingservices/Tournament$Builder;

    :cond_1
    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 69
    check-cast p1, Lcom/facebook/gamingservices/Tournament;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/Tournament$Builder;->readFrom(Lcom/facebook/gamingservices/Tournament;)Lcom/facebook/gamingservices/Tournament$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareModelBuilder;

    return-object p1
.end method

.method public final setEndTime(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->endTime:Ljava/lang/String;

    return-void
.end method

.method public final setExpiration(Ljava/time/ZonedDateTime;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    return-void
.end method

.method public final setIdentifier(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    return-void
.end method

.method public final setPayload(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    return-void
.end method

.method public final title(Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;
    .locals 1

    .line 85
    move-object v0, p0

    check-cast v0, Lcom/facebook/gamingservices/Tournament$Builder;

    invoke-virtual {v0, p1}, Lcom/facebook/gamingservices/Tournament$Builder;->setTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Builder(identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
