.class Lbam$4;
.super Ljava/lang/Object;
.source "VersionCheckManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbam;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbam;


# direct methods
.method constructor <init>(Lbam;)V
    .locals 0
    .param p1, "this$0"    # Lbam;

    .prologue
    .line 129
    iput-object p1, p0, Lbam$4;->a:Lbam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lbam$4;->a:Lbam;

    invoke-static {v0}, Lbam;->d(Lbam;)V

    .line 134
    return-void
.end method
