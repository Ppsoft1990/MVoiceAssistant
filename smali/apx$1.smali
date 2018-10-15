.class Lapx$1;
.super Ljava/util/TimerTask;
.source "WoMusicOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapx;->a(ILjava/lang/String;Ljava/lang/String;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lapx;


# direct methods
.method constructor <init>(Lapx;J)V
    .locals 0
    .param p1, "this$0"    # Lapx;

    .prologue
    .line 117
    iput-object p1, p0, Lapx$1;->b:Lapx;

    iput-wide p2, p0, Lapx$1;->a:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 121
    iget-object v0, p0, Lapx$1;->b:Lapx;

    invoke-static {v0}, Lapx;->a(Lapx;)Ljava/util/HashMap;

    move-result-object v0

    iget-wide v2, p0, Lapx$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lapx$1;->b:Lapx;

    invoke-static {v0}, Lapx;->b(Lapx;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->cancel()V

    .line 123
    iget-object v0, p0, Lapx$1;->b:Lapx;

    invoke-static {v0}, Lapx;->c(Lapx;)Laqa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lapx$1;->b:Lapx;

    invoke-static {v0}, Lapx;->c(Lapx;)Laqa;

    move-result-object v1

    const v2, 0xc3565

    const/4 v3, 0x0

    iget-object v0, p0, Lapx$1;->b:Lapx;

    .line 125
    invoke-static {v0}, Lapx;->b(Lapx;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v4

    iget-object v0, p0, Lapx$1;->b:Lapx;

    invoke-static {v0}, Lapx;->b(Lapx;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v6

    .line 124
    invoke-interface/range {v1 .. v6}, Laqa;->a(ILapo;JI)V

    .line 128
    :cond_0
    return-void
.end method
