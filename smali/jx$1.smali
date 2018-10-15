.class Ljx$1;
.super Ljava/lang/Object;
.source "SpeechPluginProxy.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljx;


# direct methods
.method constructor <init>(Ljx;)V
    .locals 0
    .param p1, "this$0"    # Ljx;

    .prologue
    .line 128
    iput-object p1, p0, Ljx$1;->a:Ljx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddLexiconFinish(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "lexName"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .prologue
    .line 137
    return-void
.end method

.method public onBuildFinish(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "grammarId"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .prologue
    .line 141
    return-void
.end method

.method public onInitFinish(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 131
    iget-object v0, p0, Ljx$1;->a:Ljx;

    invoke-static {v0}, Ljx;->a(Ljx;)V

    .line 132
    iget-object v0, p0, Ljx$1;->a:Ljx;

    invoke-static {v0}, Ljx;->b(Ljx;)V

    .line 133
    return-void
.end method
