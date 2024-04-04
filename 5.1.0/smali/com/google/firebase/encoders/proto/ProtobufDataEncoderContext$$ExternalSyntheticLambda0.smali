.class public final synthetic Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-static {p1, p2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->lambda$static$0(Ljava/util/Map$Entry;Lcom/google/firebase/encoders/ObjectEncoderContext;)V

    return-void
.end method
