.class public Lorg/jcodec/containers/mps/MPSDump;
.super Ljava/lang/Object;
.source "MPSDump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodec/containers/mps/MPSDump$MPEGVideoAnalyzer;
    }
.end annotation


# static fields
.field private static final DUMP_FROM:Ljava/lang/String; = "dump-from"

.field private static final STOP_AT:Ljava/lang/String; = "stop-at"


# instance fields
.field protected ch:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/jcodec/containers/mps/MPSDump;->ch:Ljava/nio/channels/ReadableByteChannel;

    .line 51
    return-void
.end method

.method private static getPesPayload(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 162
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 164
    const/16 v3, 0x1b9

    if-lt v2, v3, :cond_0

    .line 165
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 166
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 172
    :goto_1
    return-object v0

    .line 169
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 170
    invoke-static {v1}, Lorg/jcodec/codecs/mpeg12/MPEGUtil;->gotoNextMarker(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 54
    const/4 v1, 0x0

    .line 56
    :try_start_0
    invoke-static {p0}, Lorg/jcodec/common/tools/MainUtils;->parseArguments([Ljava/lang/String;)Lorg/jcodec/common/tools/MainUtils$Cmd;

    move-result-object v0

    .line 57
    iget-object v2, v0, Lorg/jcodec/common/tools/MainUtils$Cmd;->args:[Ljava/lang/String;

    array-length v2, v2

    if-ge v2, v3, :cond_0

    .line 58
    new-instance v0, Lorg/jcodec/containers/mps/MPSDump$1;

    invoke-direct {v0}, Lorg/jcodec/containers/mps/MPSDump$1;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "file name"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lorg/jcodec/common/tools/MainUtils;->printHelp(Ljava/util/Map;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-static {v1}, Lorg/jcodec/common/NIOUtils;->closeQuietly(Ljava/nio/channels/ReadableByteChannel;)V

    .line 75
    :goto_0
    return-void

    .line 67
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lorg/jcodec/common/tools/MainUtils$Cmd;->args:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/jcodec/common/NIOUtils;->readableFileChannel(Ljava/io/File;)Lorg/jcodec/common/FileChannelWrapper;

    move-result-object v1

    .line 68
    const-string/jumbo v2, "dump-from"

    invoke-virtual {v0, v2}, Lorg/jcodec/common/tools/MainUtils$Cmd;->getLongFlag(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 69
    const-string/jumbo v3, "stop-at"

    invoke-virtual {v0, v3}, Lorg/jcodec/common/tools/MainUtils$Cmd;->getLongFlag(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 71
    new-instance v3, Lorg/jcodec/containers/mps/MPSDump;

    invoke-direct {v3, v1}, Lorg/jcodec/containers/mps/MPSDump;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    invoke-virtual {v3, v2, v0}, Lorg/jcodec/containers/mps/MPSDump;->dump(Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {v1}, Lorg/jcodec/common/NIOUtils;->closeQuietly(Ljava/nio/channels/ReadableByteChannel;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/jcodec/common/NIOUtils;->closeQuietly(Ljava/nio/channels/ReadableByteChannel;)V

    throw v0
.end method

.method private static skipToNextPES(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 150
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 152
    const/16 v1, 0x1bd

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1ff

    if-gt v0, v1, :cond_1

    const/16 v1, 0x1be

    if-eq v0, v1, :cond_1

    .line 157
    :cond_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 155
    invoke-static {p0}, Lorg/jcodec/codecs/mpeg12/MPEGUtil;->gotoNextMarker(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private transferRemainder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 144
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 146
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x20

    const/4 v1, 0x0

    .line 78
    .line 79
    const/high16 v0, 0x100000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 82
    const/4 v0, 0x0

    .line 83
    const-wide/16 v2, 0x0

    move-object v6, v1

    move-object v7, v4

    move-object v8, v1

    .line 84
    :goto_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 85
    invoke-virtual {p0, v7}, Lorg/jcodec/containers/mps/MPSDump;->fillBuffer(Ljava/nio/ByteBuffer;)I

    .line 86
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 87
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 129
    :goto_1
    return-void

    .line 89
    :cond_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    move v3, v0

    move-object v2, v6

    move-object v6, v8

    .line 93
    :cond_1
    if-eqz v2, :cond_2

    iget v0, v2, Lorg/jcodec/containers/mps/MPSDemuxer$PESPacket;->length:I

    if-lez v0, :cond_2

    .line 94
    iget v0, v2, Lorg/jcodec/containers/mps/MPSDemuxer$PESPacket;->length:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    .line 95
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gt v0, v8, :cond_9

    .line 96
    invoke-static {v7, v0}, Lorg/jcodec/common/NIOUtils;->read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    :goto_2
    if-nez v0, :cond_3

    move-object v0, v2

    .line 127
    :goto_3
    invoke-direct {p0, v7}, Lorg/jcodec/containers/mps/MPSDump;->transferRemainder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v7, v2

    move-object v8, v6

    move-object v6, v0

    move v0, v3

    move-wide v2, v4

    goto :goto_0

    .line 98
    :cond_2
    invoke-static {v7}, Lorg/jcodec/containers/mps/MPSDump;->getPesPayload(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2

    .line 102
    :cond_3
    if-eqz v2, :cond_4

    .line 103
    invoke-virtual {p0, v2, v3, v0}, Lorg/jcodec/containers/mps/MPSDump;->logPes(Lorg/jcodec/containers/mps/MPSDemuxer$PESPacket;ILjava/nio/ByteBuffer;)V

    .line 104
    :cond_4
    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    iget v8, v2, Lorg/jcodec/containers/mps/MPSDemuxer$PESPacket;->streamId:I

    const/16 v9, 0xe0

    if-lt v8, v9, :cond_5

    iget v2, v2, Lorg/jcodec/containers/mps/MPSDemuxer$PESPacket;->streamId:I

    const/16 v8, 0xef

    if-gt v2, v8, :cond_5

    .line 105
    invoke-static {v6, v0}, Lorg/jcodec/containers/mps/MPSDump$MPEGVideoAnalyzer;->access$000(Lorg/jcodec/containers/mps/MPSDump$MPEGVideoAnalyzer;Ljava/nio/ByteBuffer;)V

    .line 107
    :cond_5
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, v12, :cond_6

    move-object v0, v1

    .line 109
    goto :goto_3

    .line 112
    :cond_6
    invoke-static {v7}, Lorg/jcodec/containers/mps/MPSDump;->skipToNextPES(Ljava/nio/ByteBuffer;)V

    .line 114
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, v12, :cond_7

    move-object v0, v1

    .line 116
    goto :goto_3

    .line 119
    :cond_7
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 120
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, v4, v2

    invoke-static {v7, v2, v3}, Lorg/jcodec/containers/mps/MPSUtils;->readPESHeader(Ljava/nio/ByteBuffer;J)Lorg/jcodec/containers/mps/MPSDemuxer$PESPacket;

    move-result-object v2

    .line 121
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v0

    .line 122
    if-eqz p1, :cond_8

    iget-wide v8, v2, Lorg/jcodec/containers/mps/MPSDemuxer$PESPacket;->pts:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-ltz v0, :cond_8

    .line 123
    new-instance v6, Lorg/jcodec/containers/mps/MPSDump$MPEGVideoAnalyzer;

    invoke-direct {v6, v1}, Lorg/jcodec/containers/mps/MPSDump$MPEGVideoAnalyzer;-><init>(Lorg/jcodec/containers/mps/MPSDump$1;)V

    .line 124
    :cond_8
    if-eqz p2, :cond_1

    iget-wide v8, v2, Lorg/jcodec/containers/mps/MPSDemuxer$PESPacket;->pts:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-ltz v0, :cond_1

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto :goto_2
.end method

.method protected fillBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jcodec/containers/mps/MPSDump;->ch:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method protected logPes(Lorg/jcodec/containers/mps/MPSDemuxer$PESPacket;ILjava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    .line 136
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lorg/jcodec/containers/mps/MPSDemuxer$PESPacket;->streamId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p1, Lorg/jcodec/containers/mps/MPSDemuxer$PESPacket;->streamId:I

    const/16 v3, 0xe0

    if-lt v0, v3, :cond_0

    const-string/jumbo v0, "video"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lorg/jcodec/containers/mps/MPSDemuxer$PESPacket;->pos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "], pts: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lorg/jcodec/containers/mps/MPSDemuxer$PESPacket;->pts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", dts: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lorg/jcodec/containers/mps/MPSDemuxer$PESPacket;->dts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    return-void

    .line 136
    :cond_0
    const-string/jumbo v0, "audio"

    goto :goto_0
.end method
