.class Lang$4;
.super Ljava/lang/Object;
.source "BookListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lang;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lang;


# direct methods
.method constructor <init>(Lang;)V
    .locals 0
    .param p1, "this$0"    # Lang;

    .prologue
    .line 127
    iput-object p1, p0, Lang$4;->a:Lang;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lang$4;->a:Lang;

    invoke-virtual {v0}, Lang;->notifyDataSetChanged()V

    .line 131
    return-void
.end method
