.class public final Landroidx/datastore/preferences/protobuf/Option;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "Option.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/OptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/Option$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/protobuf/Option;",
        "Landroidx/datastore/preferences/protobuf/Option$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/OptionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private name_:Ljava/lang/String;

.field private value_:Landroidx/datastore/preferences/protobuf/Any;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 539
    new-instance v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Option;-><init>()V

    .line 542
    sput-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    .line 543
    const-class v1, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Option;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Landroidx/datastore/preferences/protobuf/Option;
    .locals 1

    .line 14
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/datastore/preferences/protobuf/Option;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Option;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/datastore/preferences/protobuf/Option;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Option;->clearName()V

    return-void
.end method

.method static synthetic access$300(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Option;->setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/Any;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Option;->setValue(Landroidx/datastore/preferences/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$500(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/Any$Builder;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Option;->setValue(Landroidx/datastore/preferences/protobuf/Any$Builder;)V

    return-void
.end method

.method static synthetic access$600(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/Any;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Option;->mergeValue(Landroidx/datastore/preferences/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$700(Landroidx/datastore/preferences/protobuf/Option;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Option;->clearValue()V

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 86
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Option;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Option;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Option;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearValue()V
    .locals 1

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Option;->value_:Landroidx/datastore/preferences/protobuf/Any;

    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/Option;
    .locals 1

    .line 548
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    return-object v0
.end method

.method private mergeValue(Landroidx/datastore/preferences/protobuf/Any;)V
    .locals 2

    .line 184
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option;->value_:Landroidx/datastore/preferences/protobuf/Any;

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Any;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Any;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option;->value_:Landroidx/datastore/preferences/protobuf/Any;

    .line 189
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Any;->newBuilder(Landroidx/datastore/preferences/protobuf/Any;)Landroidx/datastore/preferences/protobuf/Any$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Any$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/Any$Builder;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Any$Builder;->buildPartial()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/Any;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Option;->value_:Landroidx/datastore/preferences/protobuf/Any;

    goto :goto_0

    .line 191
    :cond_0
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Option;->value_:Landroidx/datastore/preferences/protobuf/Any;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/Option$Builder;
    .locals 1

    .line 284
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Option$Builder;
    .locals 1

    .line 287
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/Option;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Option$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/Option;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Option;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/Option;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 225
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 232
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 212
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 219
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 237
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 244
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Option;

    return-object p0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 554
    sget-object v0, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Option;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Option;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 106
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Option;->name_:Ljava/lang/String;

    return-void
.end method

.method private setValue(Landroidx/datastore/preferences/protobuf/Any$Builder;)V
    .locals 0

    .line 168
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Any$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/Any;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Option;->value_:Landroidx/datastore/preferences/protobuf/Any;

    return-void
.end method

.method private setValue(Landroidx/datastore/preferences/protobuf/Any;)V
    .locals 0

    .line 151
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Option;->value_:Landroidx/datastore/preferences/protobuf/Any;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 489
    sget-object p2, Landroidx/datastore/preferences/protobuf/Option$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 532
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 526
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 511
    :pswitch_2
    sget-object p1, Landroidx/datastore/preferences/protobuf/Option;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p1, :cond_1

    .line 513
    const-class p2, Landroidx/datastore/preferences/protobuf/Option;

    monitor-enter p2

    .line 514
    :try_start_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/Option;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p1, :cond_0

    .line 516
    new-instance p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 519
    sput-object p1, Landroidx/datastore/preferences/protobuf/Option;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 521
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

    .line 508
    :pswitch_3
    sget-object p1, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "value_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    .line 504
    sget-object p3, Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/Option;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 494
    :pswitch_5
    new-instance p1, Landroidx/datastore/preferences/protobuf/Option$Builder;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/Option$Builder;-><init>(Landroidx/datastore/preferences/protobuf/Option$1;)V

    return-object p1

    .line 491
    :pswitch_6
    new-instance p1, Landroidx/datastore/preferences/protobuf/Option;

    invoke-direct {p1}, Landroidx/datastore/preferences/protobuf/Option;-><init>()V

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

    .line 37
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option;->name_:Ljava/lang/String;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Landroidx/datastore/preferences/protobuf/Any;
    .locals 1

    .line 137
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option;->value_:Landroidx/datastore/preferences/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/datastore/preferences/protobuf/Any;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .line 123
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option;->value_:Landroidx/datastore/preferences/protobuf/Any;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
