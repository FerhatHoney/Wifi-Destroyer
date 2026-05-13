package me.paranoid.wifikill.fragment;

import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import java.io.IOException;

/* loaded from: classes.dex */
final class b implements TextView.OnEditorActionListener {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int r5, KeyEvent keyEvent) throws IOException {
        me.paranoid.a.c.a("setting name `" + ((Object) textView.getText()) + "` for: " + this.a.d.b);
        me.paranoid.a.c.a(this.a.getActivity(), "name saved");
        a.a(this.a, textView.getText().toString());
        ((InputMethodManager) this.a.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(textView.getWindowToken(), 0);
        textView.clearFocus();
        return false;
    }
}
