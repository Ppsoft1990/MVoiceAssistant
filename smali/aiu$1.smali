.class Laiu$1;
.super Ljava/lang/Object;
.source "HomeAudioResourcePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laiu;->s()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laiu;


# direct methods
.method constructor <init>(Laiu;)V
    .locals 0
    .param p1, "this$0"    # Laiu;

    .prologue
    .line 148
    iput-object p1, p0, Laiu$1;->a:Laiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Laiu$1;->a:Laiu;

    invoke-static {v0}, Laiu;->a(Laiu;)V

    .line 152
    return-void
.end method
