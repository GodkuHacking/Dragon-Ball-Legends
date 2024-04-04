.class public final Landroidx/datastore/preferences/protobuf/EnumValue;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "EnumValue.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/EnumValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/protobuf/EnumValue;",
        "Landroidx/datastore/preferences/protobuf/EnumValue$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/EnumValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x2

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/EnumValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name_:Ljava/lang/String;

.field private number_:I

.field private options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 726
    new-instance v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/EnumValue;-><init>()V

    .line 729
    sput-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    .line 730
    const-class v1, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->name_:Ljava/lang/String;

    .line 20
    invoke-static {}, Landroidx/datastore/preferences/protobuf/EnumValue;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Landroidx/datastore/preferences/protobuf/EnumValue;
    .locals 1

    .line 13
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/datastore/preferences/protobuf/EnumValue;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroidx/datastore/preferences/protobuf/EnumValue;Landroidx/datastore/preferences/protobuf/Option$Builder;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->addOptions(Landroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Landroidx/datastore/preferences/protobuf/EnumValue;ILandroidx/datastore/preferences/protobuf/Option$Builder;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/EnumValue;->addOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-void
.end method

.method static synthetic access$1200(Landroidx/datastore/preferences/protobuf/EnumValue;Ljava/lang/Iterable;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->addAllOptions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1300(Landroidx/datastore/preferences/protobuf/EnumValue;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/EnumValue;->clearOptions()V

    return-void
.end method

.method static synthetic access$1400(Landroidx/datastore/preferences/protobuf/EnumValue;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->removeOptions(I)V

    return-void
.end method

.method static synthetic access$200(Landroidx/datastore/preferences/protobuf/EnumValue;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/EnumValue;->clearName()V

    return-void
.end method

.method static synthetic access$300(Landroidx/datastore/preferences/protobuf/EnumValue;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/datastore/preferences/protobuf/EnumValue;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->setNumber(I)V

    return-void
.end method

.method static synthetic access$500(Landroidx/datastore/preferences/protobuf/EnumValue;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/EnumValue;->clearNumber()V

    return-void
.end method

.method static synthetic access$600(Landroidx/datastore/preferences/protobuf/EnumValue;ILandroidx/datastore/preferences/protobuf/Option;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/EnumValue;->setOptions(ILandroidx/datastore/preferences/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$700(Landroidx/datastore/preferences/protobuf/EnumValue;ILandroidx/datastore/preferences/protobuf/Option$Builder;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/EnumValue;->setOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-void
.end method

.method static synthetic access$800(Landroidx/datastore/preferences/protobuf/EnumValue;Landroidx/datastore/preferences/protobuf/Option;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->addOptions(Landroidx/datastore/preferences/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$900(Landroidx/datastore/preferences/protobuf/EnumValue;ILandroidx/datastore/preferences/protobuf/Option;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/EnumValue;->addOptions(ILandroidx/datastore/preferences/protobuf/Option;)V

    return-void
.end method

.method private addAllOptions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;)V"
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/EnumValue;->ensureOptionsIsMutable()V

    .line 286
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)V
    .locals 1

    .line 273
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/EnumValue;->ensureOptionsIsMutable()V

    .line 274
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/Option$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOptions(ILandroidx/datastore/preferences/protobuf/Option;)V
    .locals 1

    .line 247
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/EnumValue;->ensureOptionsIsMutable()V

    .line 250
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOptions(Landroidx/datastore/preferences/protobuf/Option$Builder;)V
    .locals 1

    .line 261
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/EnumValue;->ensureOptionsIsMutable()V

    .line 262
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Option$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOptions(Landroidx/datastore/preferences/protobuf/Option;)V
    .locals 1

    .line 232
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/EnumValue;->ensureOptionsIsMutable()V

    .line 235
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 74
    invoke-static {}, Landroidx/datastore/preferences/protobuf/EnumValue;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/EnumValue;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/EnumValue;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->number_:I

    return-void
.end method

.method private clearOptions()V
    .locals 1

    .line 297
    invoke-static {}, Landroidx/datastore/preferences/protobuf/EnumValue;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 192
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->mutableCopy(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/EnumValue;
    .locals 1

    .line 735
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object v0
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 386
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/EnumValue;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/protobuf/EnumValue;)Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 389
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/EnumValue;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/EnumValue;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 327
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 334
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 314
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 321
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 339
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 346
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object p0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/EnumValue;",
            ">;"
        }
    .end annotation

    .line 741
    sget-object v0, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/EnumValue;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeOptions(I)V
    .locals 1

    .line 307
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/EnumValue;->ensureOptionsIsMutable()V

    .line 308
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0

    .line 87
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 91
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNumber(I)V
    .locals 0

    .line 118
    iput p1, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->number_:I

    return-void
.end method

.method private setOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)V
    .locals 1

    .line 220
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/EnumValue;->ensureOptionsIsMutable()V

    .line 221
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/Option$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOptions(ILandroidx/datastore/preferences/protobuf/Option;)V
    .locals 1

    .line 206
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/EnumValue;->ensureOptionsIsMutable()V

    .line 209
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 674
    sget-object p2, Landroidx/datastore/preferences/protobuf/EnumValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 719
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 713
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 698
    :pswitch_2
    sget-object p1, Landroidx/datastore/preferences/protobuf/EnumValue;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p1, :cond_1

    .line 700
    const-class p2, Landroidx/datastore/preferences/protobuf/EnumValue;

    monitor-enter p2

    .line 701
    :try_start_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/EnumValue;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p1, :cond_0

    .line 703
    new-instance p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 706
    sput-object p1, Landroidx/datastore/preferences/protobuf/EnumValue;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 708
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

    .line 695
    :pswitch_3
    sget-object p1, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "number_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "options_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 682
    const-class p3, Landroidx/datastore/preferences/protobuf/Option;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0208\u0002\u0004\u0003\u001b"

    .line 691
    sget-object p3, Landroidx/datastore/preferences/protobuf/EnumValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 679
    :pswitch_5
    new-instance p1, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;-><init>(Landroidx/datastore/preferences/protobuf/EnumValue$1;)V

    return-object p1

    .line 676
    :pswitch_6
    new-instance p1, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-direct {p1}, Landroidx/datastore/preferences/protobuf/EnumValue;-><init>()V

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

    .line 34
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->name_:Ljava/lang/String;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 106
    iget v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->number_:I

    return v0
.end method

.method public getOptions(I)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1

    .line 176
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/Option;

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 165
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Landroidx/datastore/preferences/protobuf/OptionOrBuilder;
    .locals 1

    .line 187
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/OptionOrBuilder;

    return-object p1
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroidx/datastore/preferences/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object v0
.end method
