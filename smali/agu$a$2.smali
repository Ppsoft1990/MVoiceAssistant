.class Lagu$a$2;
.super Ljava/lang/Object;
.source "UserGuideCustomSpeakerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagu$a;->onPlayCompletedCallBack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagu$a;


# direct methods
.method constructor <init>(Lagu$a;)V
    .locals 0
    .param p1, "this$1"    # Lagu$a;

    .prologue
    .line 185
    iput-object p1, p0, Lagu$a$2;->a:Lagu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lagu$a$2;->a:Lagu$a;

    invoke-static {v0}, Lagu$a;->a(Lagu$a;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 189
    return-void
.end method
