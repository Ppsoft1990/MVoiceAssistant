.class Lahy$1;
.super Ljava/lang/Object;
.source "MicOfflineUsageGuideManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahy;


# direct methods
.method constructor <init>(Lahy;)V
    .locals 0
    .param p1, "this$0"    # Lahy;

    .prologue
    .line 131
    iput-object p1, p0, Lahy$1;->a:Lahy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lahy$1;->a:Lahy;

    invoke-virtual {v0}, Lahy;->b()V

    .line 136
    return-void
.end method
