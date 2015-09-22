package com.danielecampogiani.panaro;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

public class MainFragment extends Fragment {

    private Button mButton;
    private TextView mTextView;

    public MainFragment() {
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.fragment_main, container, false);
        mTextView = (TextView) root.findViewById(R.id.text_view);
        mButton = (Button) root.findViewById(R.id.button);
        mButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                toggleVisibility(mTextView);
            }
        });
        return root;

    }

    private void toggleVisibility(View view) {
        int currentVisibility = view.getVisibility();
        if (currentVisibility == View.INVISIBLE || currentVisibility == View.GONE)
            view.setVisibility(View.VISIBLE);
        else view.setVisibility(View.INVISIBLE);
    }
}
