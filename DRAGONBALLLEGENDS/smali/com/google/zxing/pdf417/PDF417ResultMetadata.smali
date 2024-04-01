.class public final Lcom/google/zxing/pdf417/PDF417ResultMetadata;
.super Ljava/lang/Object;
.source "PDF417ResultMetadata.java"


# instance fields
.field private addressee:Ljava/lang/String;

.field private checksum:I

.field private fileId:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fileSize:J

.field private lastSegment:Z

.field private optionalData:[I

.field private segmentCount:I

.field private segmentIndex:I

.field private sender:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentCount:I

    const-wide/16 v1, -0x1

    .line 31
    iput-wide v1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileSize:J

    .line 32
    iput-wide v1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->timestamp:J

    .line 33
    iput v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->checksum:I

    return-void
.end method


# virtual methods
.method public getAddressee()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->addressee:Ljava/lang/String;

    return-object v0
.end method

.method public getChecksum()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->checksum:I

    return v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileSize:J

    return-wide v0
.end method

.method public getOptionalData()[I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->optionalData:[I

    return-object v0
.end method

.method public getSegmentCount()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentCount:I

    return v0
.end method

.method public getSegmentIndex()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentIndex:I

    return v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->timestamp:J

    return-wide v0
.end method

.method public isLastSegment()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->lastSegment:Z

    return v0
.end method

.method public setAddressee(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->addressee:Ljava/lang/String;

    return-void
.end method

.method public setChecksum(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->checksum:I

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 142
    iput-wide p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileSize:J

    return-void
.end method

.method public setLastSegment(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->lastSegment:Z

    return-void
.end method

.method public setOptionalData([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->optionalData:[I

    return-void
.end method

.method public setSegmentCount(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentCount:I

    return-void
.end method

.method public setSegmentIndex(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentIndex:I

    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->sender:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 168
    iput-wide p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->timestamp:J

    return-void
.end method
