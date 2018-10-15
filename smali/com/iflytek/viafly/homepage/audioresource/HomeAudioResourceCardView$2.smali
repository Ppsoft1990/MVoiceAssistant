.class Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$2;
.super Ljava/lang/Object;
.source "HomeAudioResourceCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$2;->b:Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;

    iput p2, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$2;->b:Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->d(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$2;->b:Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->d(Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;)Laiu;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$2;->a:I

    invoke-virtual {v0, v1}, Laiu;->a(I)V

    .line 198
    return-void
.end method
