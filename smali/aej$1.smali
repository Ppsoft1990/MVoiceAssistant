.class Laej$1;
.super Ljava/lang/Object;
.source "QuestionMessageItemDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laej;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laei;

.field final synthetic b:Laej;


# direct methods
.method constructor <init>(Laej;Laei;)V
    .locals 0
    .param p1, "this$0"    # Laej;

    .prologue
    .line 45
    iput-object p1, p0, Laej$1;->b:Laej;

    iput-object p2, p0, Laej$1;->a:Laei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Laii;

    iget-object v2, p0, Laej$1;->a:Laei;

    iget-object v2, v2, Laei;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Laii;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 50
    return-void
.end method
