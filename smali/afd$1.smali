.class Lafd$1;
.super Ljava/lang/Object;
.source "DialogResultHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafd;->c(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lafd;


# direct methods
.method constructor <init>(Lafd;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lafd;

    .prologue
    .line 113
    iput-object p1, p0, Lafd$1;->f:Lafd;

    iput-boolean p2, p0, Lafd$1;->a:Z

    iput-object p3, p0, Lafd$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lafd$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lafd$1;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lafd$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 117
    iget-object v0, p0, Lafd$1;->f:Lafd;

    iget-boolean v1, p0, Lafd$1;->a:Z

    iget-object v2, p0, Lafd$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lafd$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lafd$1;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lafd$1;->e:Z

    invoke-static/range {v0 .. v5}, Lafd;->a(Lafd;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    return-void
.end method
