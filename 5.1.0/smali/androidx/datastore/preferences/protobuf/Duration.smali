.class public final Landroidx/datastore/preferences/protobuf/Duration;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "Duration.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/DurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/Duration$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/protobuf/Duration;",
        "Landroidx/datastore/preferences/protobuf/Duration$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/DurationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

.field public static final NANOS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Duration;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECONDS_FIELD_NUMBER:I = 0x1


# instance fields
.field private nanos_:I

.field private seconds_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 462
    new-instance v0, Landroidx/datastore/preferences/protobuf/Duration;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Duration;-><init>()V

    .line 465
    sput-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    .line 466
    const-class v1, Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroidx/datastore/preferences/protobuf/Duration;
    .locals 1

    .line 57
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/datastore/preferences/protobuf/Duration;J)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Duration;->setSeconds(J)V

    return-void
.end method

.method static synthetic access$200(Landroidx/datastore/preferences/protobuf/Duration;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Duration;->clearSeconds()V

    return-void
.end method

.method static synthetic access$300(Landroidx/datastore/preferences/protobuf/Duration;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Duration;->setNanos(I)V

    return-void
.end method

.method static synthetic access$400(Landroidx/datastore/preferences/protobuf/Duration;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Duration;->clearNanos()V

    return-void
.end method

.method private clearNanos()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    iput v0, p0, Landroidx/datastore/preferences/protobuf/Duration;->nanos_:I

    return-void
.end method

.method private clearSeconds()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/Duration;->seconds_:J

    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/Duration;
    .locals 1

    .line 471
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    return-object v0
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/Duration$Builder;
    .locals 1

    .line 236
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Duration;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Duration$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/protobuf/Duration;)Landroidx/datastore/preferences/protobuf/Duration$Builder;
    .locals 1

    .line 239
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/Duration;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Duration$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/Duration;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Duration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/Duration;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 177
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 184
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 164
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 171
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 189
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 196
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Duration;

    return-object p0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Duration;",
            ">;"
        }
    .end annotation

    .line 477
    sget-object v0, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Duration;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNanos(I)V
    .locals 0

    .line 142
    iput p1, p0, Landroidx/datastore/preferences/protobuf/Duration;->nanos_:I

    return-void
.end method

.method private setSeconds(J)V
    .locals 0

    .line 92
    iput-wide p1, p0, Landroidx/datastore/preferences/protobuf/Duration;->seconds_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 412
    sget-object p2, Landroidx/datastore/preferences/protobuf/Duration$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 455
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 449
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 434
    :pswitch_2
    sget-object p1, Landroidx/datastore/preferences/protobuf/Duration;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p1, :cond_1

    .line 436
    const-class p2, Landroidx/datastore/preferences/protobuf/Duration;

    monitor-enter p2

    .line 437
    :try_start_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/Duration;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p1, :cond_0

    .line 439
    new-instance p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 442
    sput-object p1, Landroidx/datastore/preferences/protobuf/Duration;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 444
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

    .line 431
    :pswitch_3
    sget-object p1, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "seconds_"

    aput-object v0, p1, p3

    const-string p3, "nanos_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004"

    .line 427
    sget-object p3, Landroidx/datastore/preferences/protobuf/Duration;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/Duration;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 417
    :pswitch_5
    new-instance p1, Landroidx/datastore/preferences/protobuf/Duration$Builder;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/Duration$Builder;-><init>(Landroidx/datastore/preferences/protobuf/Duration$1;)V

    return-object p1

    .line 414
    :pswitch_6
    new-instance p1, Landroidx/datastore/preferences/protobuf/Duration;

    invoke-direct {p1}, Landroidx/datastore/preferences/protobuf/Duration;-><init>()V

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

.method public getNanos()I
    .locals 1

    .line 125
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Duration;->nanos_:I

    return v0
.end method

.method public getSeconds()J
    .locals 2

    .line 78
    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/Duration;->seconds_:J

    return-wide v0
.end method
