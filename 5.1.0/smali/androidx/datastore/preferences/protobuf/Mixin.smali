.class public final Landroidx/datastore/preferences/protobuf/Mixin;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "Mixin.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MixinOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/Mixin$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/protobuf/Mixin;",
        "Landroidx/datastore/preferences/protobuf/Mixin$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/MixinOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Mixin;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROOT_FIELD_NUMBER:I = 0x2


# instance fields
.field private name_:Ljava/lang/String;

.field private root_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 592
    new-instance v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Mixin;-><init>()V

    .line 595
    sput-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    .line 596
    const-class v1, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 80
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin;->name_:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin;->root_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1

    .line 74
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/datastore/preferences/protobuf/Mixin;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Mixin;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/datastore/preferences/protobuf/Mixin;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Mixin;->clearName()V

    return-void
.end method

.method static synthetic access$300(Landroidx/datastore/preferences/protobuf/Mixin;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Mixin;->setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/datastore/preferences/protobuf/Mixin;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Mixin;->setRoot(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroidx/datastore/preferences/protobuf/Mixin;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Mixin;->clearRoot()V

    return-void
.end method

.method static synthetic access$600(Landroidx/datastore/preferences/protobuf/Mixin;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Mixin;->setRootBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 135
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Mixin;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Mixin;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearRoot()V
    .locals 1

    .line 211
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Mixin;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Mixin;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->getRoot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin;->root_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1

    .line 601
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    return-object v0
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/Mixin$Builder;
    .locals 1

    .line 307
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/protobuf/Mixin;)Landroidx/datastore/preferences/protobuf/Mixin$Builder;
    .locals 1

    .line 310
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/Mixin;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/Mixin;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Mixin;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/Mixin;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 248
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 255
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 235
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 242
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 260
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 267
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Mixin;

    return-object p0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 607
    sget-object v0, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Mixin;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0

    .line 148
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Mixin;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 152
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Mixin;->name_:Ljava/lang/String;

    return-void
.end method

.method private setRoot(Ljava/lang/String;)V
    .locals 0

    .line 196
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Mixin;->root_:Ljava/lang/String;

    return-void
.end method

.method private setRootBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0

    .line 225
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Mixin;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 229
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Mixin;->root_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 542
    sget-object p2, Landroidx/datastore/preferences/protobuf/Mixin$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 585
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 579
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 564
    :pswitch_2
    sget-object p1, Landroidx/datastore/preferences/protobuf/Mixin;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p1, :cond_1

    .line 566
    const-class p2, Landroidx/datastore/preferences/protobuf/Mixin;

    monitor-enter p2

    .line 567
    :try_start_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/Mixin;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p1, :cond_0

    .line 569
    new-instance p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 572
    sput-object p1, Landroidx/datastore/preferences/protobuf/Mixin;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 574
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 561
    :pswitch_3
    sget-object p1, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "root_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 557
    sget-object p3, Landroidx/datastore/preferences/protobuf/Mixin;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/Mixin;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 547
    :pswitch_5
    new-instance p1, Landroidx/datastore/preferences/protobuf/Mixin$Builder;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;-><init>(Landroidx/datastore/preferences/protobuf/Mixin$1;)V

    return-object p1

    .line 544
    :pswitch_6
    new-instance p1, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-direct {p1}, Landroidx/datastore/preferences/protobuf/Mixin;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin;->name_:Ljava/lang/String;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin;->root_:Ljava/lang/String;

    return-object v0
.end method

.method public getRootBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 182
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin;->root_:Ljava/lang/String;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
