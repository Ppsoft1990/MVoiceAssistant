.class public Lbaw;
.super Ljava/lang/Object;
.source "VoiceNoteItem.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:J

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v1, p0, Lbaw;->a:I

    .line 5
    const/4 v0, 0x1

    iput v0, p0, Lbaw;->b:I

    .line 6
    const/4 v0, 0x2

    iput v0, p0, Lbaw;->c:I

    .line 7
    iput v1, p0, Lbaw;->i:I

    .line 8
    iput-wide v2, p0, Lbaw;->d:J

    .line 9
    iput-wide v2, p0, Lbaw;->e:J

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lbaw;->f:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lbaw;->j:Z

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbaw;->d:J

    .line 18
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lbaw;->i:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "mType"    # I

    .prologue
    .line 24
    iput p1, p0, Lbaw;->i:I

    .line 25
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbaw;->j:Z

    .line 29
    return-void
.end method
