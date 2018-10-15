.class Lazy$2;
.super Ljava/lang/Thread;
.source "UidPersistentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazy;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lazy;


# direct methods
.method constructor <init>(Lazy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lazy;

    .prologue
    .line 244
    iput-object p1, p0, Lazy$2;->b:Lazy;

    iput-object p2, p0, Lazy$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lazy$2;->b:Lazy;

    iget-object v1, p0, Lazy$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lazy;->b(Lazy;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lazy$2;->b:Lazy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lazy;->b(Lazy;Z)Z

    .line 250
    return-void
.end method
