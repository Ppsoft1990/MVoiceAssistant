.class public interface abstract Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
.super Ljava/lang/Object;
.source "WidgetContainerInterface.java"


# static fields
.field public static final IN_ANIMATION_DURATION:J = 0x12cL

.field public static final OUT_ANIMATION_DURATION:J = 0x12cL


# virtual methods
.method public abstract addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;)V
.end method

.method public abstract changeSkin()V
.end method

.method public abstract getCurrentAddDisplayComponent()Lcom/iflytek/framework/ui/DisplayComponent;
.end method

.method public abstract getDisplayComponentCounts()I
.end method

.method public abstract onTouchEventFromChild(Landroid/view/MotionEvent;)Z
.end method

.method public abstract removeCurrentAddDisplayComponent()V
.end method
