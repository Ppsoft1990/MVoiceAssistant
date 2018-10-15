.class final Lo/fi;
.super Ljava/lang/Object;
.source "AuthImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lo/fh;


# direct methods
.method constructor <init>(Lo/fh;)V
    .locals 0

    iput-object p1, p0, Lo/fi;->a:Lo/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/fi;->a:Lo/fh;

    invoke-static {v0}, Lo/fh;->a(Lo/fh;)V

    return-void
.end method
